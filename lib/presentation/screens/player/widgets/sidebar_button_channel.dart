import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entities/channel.entity.dart';
import '../../../../widgets/google_text.widget.dart';

class SidebarButtonChannel extends StatelessWidget {
  const SidebarButtonChannel({
    super.key,
    required this.onTap,
    required this.channel,
  });

  final VoidCallback onTap;
  final Channel channel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 48,
        child: Row(
          children: [
            SizedBox(
              width: 42,
              height: 32,
              child: Center(
                child: GoogleTextWidget(
                  channel.number.toString(),
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
             SizedBox(
                width: 32,
                height: 32,
                child: CachedNetworkImage(
                  imageUrl: channel.card,
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            const SizedBox(width: 8),
            Expanded(
              child: GoogleTextWidget(
                channel.title,
                style: const TextStyle(
                  fontSize: 12,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
