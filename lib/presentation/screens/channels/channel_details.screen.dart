import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/domain/entities/channel.entity.dart';
import 'package:tvapp/presentation/screens/channels/widgets/body.channels_details.widget.dart';

/// Channel Details
class ChannelDetailsScreen extends ConsumerStatefulWidget {
  const ChannelDetailsScreen({super.key, required this.channel});

  static String name = 'channels-details';

  final Channel channel;

  @override
  ConsumerState createState() => _ChannelDetailsScreenState();
}

class _ChannelDetailsScreenState extends ConsumerState<ChannelDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyWidget(
        channel: widget.channel,
      ),
    );
  }
}
