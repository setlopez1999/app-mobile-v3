import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/presentation/screens/login/widgets/body.login.widget.dart';
import 'package:tvapp/presentation/widgets/video_loader.widget.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  static String name = 'login';

  @override
  ConsumerState createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const VideoLoader(
      child: Scaffold(
        body: BodyWidget(),
      ),
    );
  }
}
