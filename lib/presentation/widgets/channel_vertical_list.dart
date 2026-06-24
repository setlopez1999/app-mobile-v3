import 'package:flutter/material.dart';
import 'package:tvapp/domain/enums/list_type.enum.dart';
import 'package:tvapp/presentation/widgets/row_button_channel.dart';

import '../../domain/entities/channel.entity.dart';
import 'grid_button_channel.dart';

class ChannelVerticalList extends StatelessWidget {
  const ChannelVerticalList({
    super.key,
    required this.channels,
    required this.currentCategoryId,
    required this.show,
    required this.lisType,
    this.onSelectChannel,
  });

  final List<Channel> channels;
  final String currentCategoryId;
  final bool show;
  final ListType lisType;
  final Function(Channel channelLive)? onSelectChannel;

  @override
  Widget build(BuildContext context) {

    if(!show) {
      return const SizedBox.shrink();
    }

    if(lisType == ListType.list) {
      return Expanded(
        child: ListView.builder(
            itemCount: channels.length,
            itemBuilder: (BuildContext context, int index) {
              final channel = channels[index];
              return RowButtonChannel(
                  channel: channel,
                  channels: channels,
                  currentCategoryId: currentCategoryId,
                  onPressed: onSelectChannel);
            }));
    }

    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        childAspectRatio: 1.1,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        children: List<Widget>.from(
          channels.map(
                (channel) {
              final index = channels.indexOf(channel);
              return GridButtonChannel(
                channel: channel,
                channels: channels,
                currentCategoryId: currentCategoryId,
                onPressed: onSelectChannel,
              );
            },
          ),
        ),
      ),
    );
  }
}
