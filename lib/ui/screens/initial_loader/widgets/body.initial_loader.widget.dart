import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tvapp/config/environment/environment.dart';
import 'package:tvapp/core/application/states/auth/auth_state.dart';
import 'package:tvapp/ui/providers/auth/auth_provider.dart';
import 'package:tvapp/ui/screens/home/home.screen.dart';
import 'package:tvapp/ui/screens/menu/menu_grid.screen.dart';
import 'package:tvapp/ui/screens/login/login.screen.dart';

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
      if(mounted){
        setState(() {
          opacityLogo = 1;
        });
      }
    });

    Future.delayed(const Duration(seconds: 4), () {
      if(mounted){
        setState(() {
          opacityLogo = 0.1;
        });
      }
    });


    Future.delayed(const Duration(seconds: 5), () async {
      if(mounted){
        await ref
            .read(authProvider.notifier)
            .loadSession();

        ref.read(authProvider).maybeWhen(
            success: (user) {
              context.replaceNamed(MenuGridScreen.name);
            },
            orElse: () {
              context.replaceNamed(LoginScreen.name);
            }
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: AnimatedOpacity(
        opacity: opacityLogo,
        duration: const Duration(seconds: 2),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * Environment.splashHeight,
          width: MediaQuery.of(context).size.width * Environment.splashWidth,
          child: Image.asset(
            // GlobalSettings().getSetting('logo'),
            Environment.appIcon,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
