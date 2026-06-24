import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/domain/entities/channel.entity.dart';
import 'package:tvapp/domain/entities/epg.entity.dart';
import 'package:tvapp/domain/entities/program_guide.entity.dart';
import 'package:tvapp/domain/repositories/channels.repository.dart';
import 'package:tvapp/presentation/providers/selected_category.provider.dart';
import 'package:tvapp/presentation/screens/player/player.screen.dart';
import 'package:tvapp/providers/epg.state.dart';
import 'package:tvapp/providers/search.state.dart';
import 'package:tvapp/storage/secure_storage.dart';
import 'package:tvapp/widgets/app_bar.widget.dart';
import 'package:tvapp/widgets/google_text.widget.dart';
import 'package:two_dimensional_scrollables/two_dimensional_scrollables.dart';

class GuideScreen extends ConsumerWidget {
  const GuideScreen({super.key});

  static String name = 'Tv guide';
  static const TIMES = [
    "00:00",
    "00:30",
    "01:00",
    "01:30",
    "02:00",
    "02:30",
    "03:00",
    "03:30",
    "04:00",
    "04:30",
    "05:00",
    "05:30",
    "06:00",
    "06:30",
    "07:00",
    "07:30",
    "08:00",
    "08:30",
    "09:00",
    "09:30",
    "10:00",
    "10:30",
    "11:00",
    "11:30",
    "12:00",
    "12:30",
    "13:00",
    "13:30",
    "14:00",
    "14:30",
    "15:00",
    "15:30",
    "16:00",
    "16:30",
    "17:00",
    "17:30",
    "18:00",
    "18:30",
    "19:00",
    "19:30",
    "20:00",
    "20:30",
    "21:00",
    "21:30",
    "22:00",
    "22:30",
    "23:00",
    "23:30",
  ];
  static const BASE_HALF_HOUR = 150;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final epgState = ref.watch(epgStateProvider);
    final verticalController = ScrollController();
    final horizontalController = ScrollController();

    final allChannels = ref.watch(searchableChannelsStateProvider).value ?? [];
    

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (verticalController.hasClients) {
        final now = DateTime.now();
        horizontalController.jumpTo((now.hour * 300) + (now.minute * 5).toDouble());
      }
    });

    return Scaffold(
      appBar: customAppBar(context, title: 'Guía de programación'),
      body: epgState.when(
        data: (epg) {
          return _buildTableView(epg, verticalController, horizontalController, ref, context, allChannels);
        },
        error: (error, stackTrace) {
          return const GoogleTextWidget('');
        },
        loading: () => Center(
          child: CircularProgressIndicator(
            color: AppTheme.secondaryColor(context),
          ),
        ),
      ),
    );
  }

  TableView _buildTableView(List<TvGuideEntity> epg, ScrollController verticalController, ScrollController horizontalController, WidgetRef ref, BuildContext context, List<Map<String, dynamic>>? allChannels) {
    return TableView.builder(
      cellBuilder: (context, vicinity) => _buildCell(vicinity, epg, ref, context, allChannels),
      horizontalDetails: ScrollableDetails.horizontal(controller: horizontalController),
      verticalDetails: ScrollableDetails.vertical(controller: verticalController),
      columnCount: TIMES.length + 2,
      columnBuilder: _buildColumn,
      rowCount: epg.length + 1,
      rowBuilder: _buildRow,
      pinnedColumnCount: 2,
      pinnedRowCount: 1,
      cacheExtent: 10,
    );
  }

  TableViewCell _buildCell(TableVicinity vicinity, List<TvGuideEntity> epg,
      WidgetRef ref, BuildContext context, List<Map<String, dynamic>>? allChannels) {
    if (vicinity.row == 0) {
      return _buildHeaderCell(vicinity);
    }
    if (vicinity.column == 0) {
      return _buildChannelNumberCell(epg[vicinity.row - 1]);
    }
    if (vicinity.column == 1) {
      return _buildChannelImageCell(epg[vicinity.row - 1], ref, context, allChannels);
    }
    return _buildProgramCell(epg[vicinity.row - 1]);
  }

  TableViewCell _buildHeaderCell(TableVicinity vicinity) {
    if (vicinity.column < 2) {
      return TableViewCell(
        child: Center(
            child: GoogleTextWidget(vicinity.column == 0 ? 'N°' : 'Canal')),
      );
    }
    return TableViewCell(
      child: GoogleTextWidget(TIMES[vicinity.column - 2]),
    );
  }

  TableViewCell _buildChannelNumberCell(TvGuideEntity channel) {
    return TableViewCell(
      child: Center(child: GoogleTextWidget(channel.numero.toString())),
    );
  }

  TableViewCell _buildChannelImageCell(TvGuideEntity channel, WidgetRef ref, BuildContext context, List<Map<String, dynamic>>? allChannels) {
    return TableViewCell(
      child: GestureDetector(
        onTap: () async {
          final secureStorage = ref.read(secureStorageProvider).requireValue;
          final token = secureStorage.get('token')!;
          final channelLive = await ChannelsRepository().getChannelWithStream(
            token,
            channel: Channel(
                adulto: channel.adulto == 1,
                card: channel.imagen,
                cardIos: channel.imagen,
                description: channel.descripcion,
                number: channel.numero,
                playlist: 0,
                premium: false,
                catchup: false,
                studio: channel.id,
                title: channel.nombre,
                vivo: 0),
          );

          if (allChannels != null && allChannels.isNotEmpty) {
            final List<Channel> channels = allChannels.map(Channel.fromJson).toList();

            final channelFromAll = allChannels.firstWhere((element) => element['studio'] == channel.id);

            ref.read(selectedCategoryProvider.notifier).value(channelFromAll['category_id'].toString());

            if (context.mounted) {
              await context.pushNamed(
                PlayerScreen.name,
                extra: {
                  'channel': channelLive,
                  'channels': channels,
                  'categoryId': channelFromAll['category_id'].toString(),
                },
              );
            }
          }
        },
        child: Image.network(channel.imagen, width: 64, height: 64),
      ),
    );
  }

  TableViewCell _buildProgramCell(TvGuideEntity channel) {
    return TableViewCell(
      columnMergeSpan: TIMES.length,
      columnMergeStart: 2,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final totalWidth = (BASE_HALF_HOUR * TIMES.length).toDouble();
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: totalWidth > constraints.maxWidth
                  ? totalWidth
                  : constraints.maxWidth,
              height: 64,
              child: Stack(
                children: channel.epg.map(_buildProgramItem).toList(),
              ),
            ),
          );
        },
      ),
    );
  }

  Positioned _buildProgramItem(EpgEntity element) {
    final ini = DateFormat('HH:mm')
        .format(DateTime.fromMillisecondsSinceEpoch(element.fechaIni * 1000));
    final end = DateFormat('HH:mm')
        .format(DateTime.fromMillisecondsSinceEpoch(element.fechaFin * 1000));
    return Positioned(
      left: _getOffset(element.fechaIni) - 1,
      top: 0,
      child: Container(
        height: 62,
        width: _getProgramWidth(element.fechaIni, element.fechaFin) - 2,
        color: const Color.fromRGBO(66, 66, 66, 1),
        child: Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GoogleTextWidget('$ini - $end', maxLines: 1),
              GoogleTextWidget(element.titulo, maxLines: 1),
            ],
          ),
        ),
      ),
    );
  }

  TableSpan _buildColumn(int index) {
    return TableSpan(
      foregroundDecoration: const TableSpanDecoration(
        border: TableSpanBorder(trailing: BorderSide()),
      ),
      extent: FixedTableSpanExtent(index < 2 ? 64 : BASE_HALF_HOUR.toDouble()),
      cursor: SystemMouseCursors.contextMenu,
    );
  }

  TableSpan _buildRow(int index) {
    return TableSpan(
      backgroundDecoration: const TableSpanDecoration(
        border: TableSpanBorder(trailing: BorderSide()),
      ),
      extent: FixedTableSpanExtent(index > 0 ? 64 : 20),
      cursor: SystemMouseCursors.click,
    );
  }

  double _getOffset(int fechaIni) {
    final init = DateTime.fromMillisecondsSinceEpoch(fechaIni * 1000);
    final now = DateTime.now();
    final offsetDate = DateTime(now.year, now.month, now.day);
    const BASE_MINUTES_ON_PIXELS = 300;
    final HOUR_ON_MIUTES = 60;

    var diff = init.difference(offsetDate).inMinutes;
    if (diff > 0) {
      diff++;
    }
    return (diff * BASE_MINUTES_ON_PIXELS) / HOUR_ON_MIUTES;
  }

  double _getProgramWidth(int fechaIni, int fechaFin) {
    final init = DateTime.fromMillisecondsSinceEpoch(fechaIni * 1000);
    var end = DateTime.fromMillisecondsSinceEpoch(fechaFin * 1000);
    final actualDay = DateTime.now().weekday;
    const pixelsOnMinute = 5;
    if (end.weekday != actualDay) {
      end = DateTime(
        end.year,
        end.month,
        init.day,
        23,
        59,
      );
    }

    final diff = end.difference(init).inMinutes;
    return (diff * pixelsOnMinute).toDouble();
  }
}
