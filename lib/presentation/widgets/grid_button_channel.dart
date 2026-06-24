import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/presentation/widgets/base_button_channel.dart';

import '../../config/theme/app.theme.dart';
import '../../domain/entities/channel.entity.dart';
import '../../widgets/google_text.widget.dart';

class GridButtonChannel extends ConsumerStatefulWidget {
  const GridButtonChannel(
      {super.key,
      required this.channel,
      required this.channels,
      required this.currentCategoryId,
      required this.onPressed});

  final Channel channel;
  final List<Channel> channels;
  final String currentCategoryId;
  final Function(Channel channelLive)? onPressed;

  _GridButtonChannelState createState() => _GridButtonChannelState();
}

class _GridButtonChannelState extends ConsumerState<GridButtonChannel> {
  late bool isFavoriteChannel;
  bool isLoadingRequest = false;
  
  @override
  void initState() {
    isFavoriteChannel = widget.channel.isFavorite;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseButtonChannel(
      channel: widget.channel,
      channels: widget.channels,
      currentCategoryId: widget.currentCategoryId,
      onPressed: widget.onPressed,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.zero,
            child: 
            SizedBox(
              width: 210,
              height: 90,
              child: CachedNetworkImage(
                imageUrl: widget.channel.card,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: GoogleTextWidget(
                  widget.channel.title,
                  style: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 2,
                ),
              ),
              IconButton(
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
                /* () => BaseButtonChannel.toggleFavorite(
                    widget.channel, widget.currentCategoryId, ref), */
                icon: Icon(
                  isFavoriteChannel
                      ? Icons.favorite_rounded
                      : Icons.favorite_outline_rounded,
                  color: AppTheme.secondaryColor(context)),
              )
            ],
          )
        ],
      ),
    );
  }
}
