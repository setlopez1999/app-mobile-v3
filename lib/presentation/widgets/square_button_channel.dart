import 'package:flutter/material.dart';
import 'package:tvapp/presentation/widgets/base_button_channel.dart';

import '../../domain/entities/channel.entity.dart';
import '../../widgets/google_text.widget.dart';

class SquareButtonChannel extends StatelessWidget {
  const SquareButtonChannel({
    super.key,
    required this.channel,
    required this.channels,
    required this.currentCategoryId,
    required this.onPressed,
  });

  final Channel channel;
  final List<Channel> channels;
  final String currentCategoryId;
  final Function(Channel channelLive) onPressed;

  @override
  Widget build(BuildContext context) {
    return BaseButtonChannel(
      channel: channel,
      channels: channels,
      currentCategoryId: currentCategoryId,
      onPressed: onPressed,
      child: SizedBox(
          width: 100,
          height: 120,
          child: Column(children: [
            Padding(
              padding: EdgeInsets.zero,
              child: Image.network(
                channel.card,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            GoogleTextWidget(
              channel.title,
              style: const TextStyle(
                fontSize: 9,
              ),
              textAlign: TextAlign.center,
            ),
          ])),
    );
  }
}
