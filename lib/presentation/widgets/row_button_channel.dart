import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/presentation/widgets/base_button_channel.dart';

import '../../config/theme/app.theme.dart';
import '../../domain/entities/channel.entity.dart';
import '../../widgets/google_text.widget.dart';

class RowButtonChannel extends ConsumerStatefulWidget {
  const RowButtonChannel({
    super.key,
    required this.channel,
    required this.channels,
    required this.currentCategoryId,
    required this.onPressed,
  });

  final Channel channel;
  final List<Channel> channels;
  final String currentCategoryId;
  final Function(Channel channelLive)? onPressed;

  @override
  _RowButtonChannelState createState() => _RowButtonChannelState();
}

class _RowButtonChannelState extends ConsumerState<RowButtonChannel> {
  late bool isFavoriteChannel;
  bool isLoadingRequest = false;
  
  @override
  void initState() {
    setState(() {
      isFavoriteChannel = widget.channel.isFavorite;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseButtonChannel(
      channel: widget.channel,
      channels: widget.channels,
      currentCategoryId: widget.currentCategoryId,
      onPressed: widget.onPressed,
      child: Row(
        children: [
          SizedBox(
            width: 64,
            height: 64,
            child: Center(
              child: GoogleTextWidget(
                widget.channel.number.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListTile(
              contentPadding: const EdgeInsets.only(left: 1, right: 10),
              leading: SizedBox(
                width: 64,
                height: 64,
                child: CachedNetworkImage(
                  imageUrl: widget.channel.card,
                  errorWidget: (context, url, error){
                     final uri = Uri.parse(widget.channel.card);
                      final urlFormatted =  Uri(
                        scheme: uri.scheme,
                        host: uri.host,
                        path: uri.path,
                      ).toString();

                    return Image.network(
                      urlFormatted,
                      errorBuilder: (context, error, stackTrace) {
                        // Si falla, muestra un ícono de error
                        return const Icon(Icons.error);
                      },
                    );
                  },
                ),
              ),
              title: GoogleTextWidget(
                widget.channel.title,
              ),
              trailing: IconButton(
                onPressed: isLoadingRequest
                    ? (){}
                    : () async {
                        setState(() {
                          isLoadingRequest = true;
                        });

                        await BaseButtonChannel.toggleFavorite(
                          widget.channel,
                          widget.currentCategoryId,
                          ref,
                        );

                        if (context.mounted) {
                          setState(() {
                            isLoadingRequest = false; // Termina el estado de carga
                            isFavoriteChannel = !isFavoriteChannel;
                          });
                        }
                      },
                icon:   Icon(
                  isFavoriteChannel 
                      ? Icons.favorite_rounded
                      : Icons.favorite_outline_rounded,
                  color: AppTheme.secondaryColor(context)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
