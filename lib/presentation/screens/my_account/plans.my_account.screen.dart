import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/providers/plans.state.dart';
import 'package:tvapp/widgets/app_bar.widget.dart';
import 'package:tvapp/widgets/google_text.widget.dart';
import 'package:url_launcher/url_launcher.dart';

/// Plans
class PlansScreen extends ConsumerStatefulWidget {
  const PlansScreen({super.key, required this.currentPlanToRemoveFromPlans});

  static String name = 'Plans';
  final int currentPlanToRemoveFromPlans;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PlansScreenState();
}

class _PlansScreenState extends ConsumerState<PlansScreen> {
  int? showChannlesGrid;
  @override
  Widget build(BuildContext context) {
    final asyncPlans = ref.watch(asyncPlansProvider);

    return asyncPlans.when(
      data: (plans) {
        // current plan is removed from the list of plans
        plans = plans.where((plan)=>plan.id != widget.currentPlanToRemoveFromPlans).toList();

        return Scaffold(
          appBar: customAppBar(
            context,
            title: 'Otros planes',
          ),
          body: ListView.builder(
            itemCount: plans.length,
            itemBuilder: (context, index) {
              final plan = plans[index];

              return Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0), // Ajusta el valor del radio aquí
                    ),
                          color: AppTheme.secondaryColor(context),
                          margin: const EdgeInsets.all(16),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GoogleTextWidget(
                                    'Información del plan',
                                    style: TextStyle(
                                      color: AppTheme.secondaryTextColor(context),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  GoogleTextWidget(
                                    plan.name,
                                    style: TextStyle(
                                      color: AppTheme.secondaryTextColor(context),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24,
                                    ),
                                  ),
                                  GoogleTextWidget(
                                    '${plan.freeDays} días GRATIS',
                                    style: TextStyle(
                                      color: AppTheme.secondaryTextColor(context),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  GoogleTextWidget(
                                    'Contiene + ${plan.channels} canales\n'
                                    '${plan.simultaneousDevices} ${plan.simultaneousDevices > 1 ? 'dispositivos' : 'dispositivo'} de reproducción simultánea',
                                    style: TextStyle(
                                      color: AppTheme.secondaryTextColor(context),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  FilledButton(
                                    style: FilledButton.styleFrom(
                                      backgroundColor:
                                          AppTheme.primaryColor(context),
                                      minimumSize: const Size.fromHeight(49),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        showChannlesGrid = index;
                                      });
                                    },
                                    child: const GoogleTextWidget(
                                      'Descubre nuestros canales',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                  if (showChannlesGrid == index) 
                    Stack(
                      children: [
                        Card(
                          margin: const EdgeInsets.all(16),
                          color: AppTheme.textColor(context),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8)
                                      .copyWith(bottom: 0),
                                  child: GoogleTextWidget(
                                    'Grilla de canales',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: AppTheme.primaryColor(context),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: GoogleTextWidget(
                                    plan.name,
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: AppTheme.primaryColor(context),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  // height: 800,
                                  child: GridView.builder(
                                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 5,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,
                                    ),
                                    itemCount: plan.listChannel.length,
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return Image.network(
                                        plan.listChannel[index].imagen,
                                        fit: BoxFit.cover,
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(height: 20),
                                SizedBox(
                                  width: double.infinity,
                                  child: FilledButton(
                                    style: ButtonStyle(
                                      padding: WidgetStateProperty.all(
                                        const EdgeInsets.symmetric(vertical: 16), // Padding dentro del botón
                                      ),
                                    ),
                                    /* style: FilledButton.styleFrom(
                                      minimumSize: const Size.fromHeight(49),
                                    ), */
                                    onPressed: () {
                                      launchUrl(
                                        Uri.parse('https://bantelweb.iptvperu.tv/login'),
                                        mode: LaunchMode.externalApplication,
                                      );
                                      /* setState(() {
                                        showChannlesGrid = index;
                                      }); */
                                    },
                                    child: GoogleTextWidget(
                                      '¡Cambia de Plan ahora!',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 16,
                                        color: AppTheme.primaryColor(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: IconButton(
                            style: IconButton.styleFrom(
                              backgroundColor: AppTheme.secondaryColor(context),
                            ),
                            onPressed: () {
                              setState(() {
                                showChannlesGrid = null;
                              });
                            },
                            icon: const Icon(Icons.close, weight : 10, color:  Colors.black,),
                          ),
                        ),
                      ],
                    ) else const SizedBox.shrink()
                ],
              );
            },
          ),
        );
      },
      error: (error, stackTrace) {
        return GoogleTextWidget('$error: $stackTrace');
      },
      loading: () => Center(
        child: CircularProgressIndicator(
          color: AppTheme.secondaryColor(context),
        ),
      ),
    );
  
  }
}
