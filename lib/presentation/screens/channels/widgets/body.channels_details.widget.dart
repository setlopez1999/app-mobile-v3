import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tvapp/config/extensions/context.extension.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/domain/entities/channel.entity.dart';
import 'package:tvapp/widgets/google_text.widget.dart';
import 'package:url_launcher/url_launcher.dart';


/// Channel Details Body Widget
class BodyWidget extends ConsumerStatefulWidget {
  const BodyWidget({super.key, required this.channel});

  final Channel channel;

  @override
  ConsumerState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends ConsumerState<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    final channel = widget.channel;
    return unavailableChannel(context, channel);
  }

  Widget unavailableChannel(BuildContext context, Channel channel) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.transparent,
          expandedHeight: 265,
          stretch: true,
          leading: IconButton(
            onPressed: context.pop,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 34,
            ),
          ),
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.zero,
            title: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppTheme.primaryColor(context).withOpacity(0.25),
                        AppTheme.primaryColor(context),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 16,
                  right: 16,
                  bottom: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GoogleTextWidget(
                        channel.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            background: Image.network(
              channel.card,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverFillRemaining(
          child: Column(
            children: [
              Card(
                color: AppTheme.secondaryColor(context),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 24,
                  ),
                  child: GoogleTextWidget(
                    'Canal no disponible',
                    style: TextStyle(
                      color: AppTheme.secondaryTextColor(context),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
                child: GoogleTextWidget(
                  'Para acceder a este canal, afíliate al Plan Silver o\n'
                  'Gold mediante nuestra página web\n'
                  'www.bantelperu.com',
                  style: TextStyle(
                    fontSize: 14.5,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: MaterialButton(
                        color: AppTheme.textColor(context).withOpacity(0.2),
                        onPressed: () {
                           showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                backgroundColor: const Color(0xFF646464),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: const BorderSide(
                                    color: Colors.white,
                                    width: 1.5,
                                  ),
                                ),
                                child: Container(
                                  constraints: BoxConstraints(
                                    maxHeight: MediaQuery.of(context).size.height * 0.6,
                                    minWidth: MediaQuery.of(context).size.height * 0.8,
                                  ),
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.info_outline_rounded,
                                        color: AppTheme.textColor(context),
                                        size: 34,
                                      ),
                                      const SizedBox(height: 8),
                                      Text(channel.title, style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                        color: AppTheme.textColor(context)
                                      ),textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 8),
                                      Expanded(
                                        child: SingleChildScrollView(
                                          child: Text(
                                            channel.description,
                                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                              color: AppTheme.textColor(context)
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      FilledButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('Cerrar'),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Icon(
                                  Icons.info_outline_rounded,
                                  color: AppTheme.textColor(context),
                                  size: 34,
                                ),
                              ),
                              const GoogleTextWidget(
                                'Más info',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: MaterialButton(
                        color: AppTheme.textColor(context).withOpacity(0.2),
                        onPressed: () {
                          launchUrl(Uri.parse('https://bantelweb.iptvperu.tv/login'));
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Icon(
                                  Icons.shopping_cart_outlined,
                                  color: AppTheme.textColor(context),
                                  size: 34,
                                ),
                              ),
                              const GoogleTextWidget(
                                'Cambia de plan',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
