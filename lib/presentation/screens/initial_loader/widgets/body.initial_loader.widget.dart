import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/config/environment/environment.dart';

class BodyWidget extends ConsumerStatefulWidget {
  const BodyWidget({super.key});

  @override
  ConsumerState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends ConsumerState<BodyWidget> {
  /// Variables
  double opacityLogo = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      setState(() {
        opacityLogo = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedOpacity(
        opacity: opacityLogo,
        duration: const Duration(seconds: 2),
        child: Image.asset(
          Environment.appIcon,
          width: 256,
          height: 256,
        ),
      ),
    );
  }
}
