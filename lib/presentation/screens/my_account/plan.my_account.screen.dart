import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:tvapp/config/environment/environment.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/domain/entities/index_info.entity.dart';
import 'package:tvapp/domain/entities/plan.entity.dart';
import 'package:tvapp/presentation/screens/my_account/plans.my_account.screen.dart';
import 'package:tvapp/presentation/screens/my_account/widgets/channels_grids_by_plan.dart';
import 'package:tvapp/presentation/widgets/google_text_span.widget.dart';
import 'package:tvapp/providers/index.state.dart';
import 'package:tvapp/providers/plans.state.dart';
import 'package:tvapp/widgets/app_bar.widget.dart';
import 'package:tvapp/widgets/google_text.widget.dart';

import '../../../providers/current_user.state.dart';

/// Plan in my account screen
class PlanScreen extends ConsumerStatefulWidget {
  const PlanScreen({super.key});

  static String name = 'Plan';

  @override
  ConsumerState createState() => _PlanScreenState();
}

class _PlanScreenState extends ConsumerState<PlanScreen> {
  
  @override
  Widget build(BuildContext context) {
    final asyncPlans = ref.watch(asyncPlansProvider);
    final generalInfo = ref.watch(indexStateProvider);
    final userData = ref.watch(currentUserProvider);

    
    return generalInfo.when(
      data: (info) {
        return Scaffold(
          appBar: customAppBar(
            context,
            title: 'Mi plan',
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...ListTile.divideTiles(
                      color: Colors.white24,
                      tiles: [
                        ListTile(
                          title: const GoogleTextWidget(
                            'Plan asociado',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          subtitle: GoogleTextWidget(
                            info.plan,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        ListTile(
                          title: const GoogleTextWidget(
                            'Vigencia',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GoogleTextWidget(
                                'Desde ${DateFormat("dd/MM/yyyy").format(DateTime.now())}',
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              GoogleTextWidget(
                                'Hasta ${DateFormat("dd/MM/yyyy").format(
                                  DateTime.now().add(
                                    const Duration(days: 30),
                                  ),
                                )}',
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    userData.when(
                      data: (user) => user.email != Environment.userStore ? Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(left: 16, right: 16, top: 70, bottom: 20),
                        child: RichText(
                          text: googleTextSpan(
                            context,
                            value: 'Visita nuestro página web ',
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15
                            ),
                            children: [
                              googleTextSpan(
                                context,
                                value: 'www.bantelperu.com',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15
                                ),
                              ),
                              googleTextSpan(
                                context,
                                value:
                                '\n y conoce todos nuestros productos y servicios',
                              ),
                            ],
                          ),
                        ),
                      ): const SizedBox.shrink(),
                      error: (error, stack) => const SizedBox.shrink(),
                      loading: () => const SizedBox.shrink(),
                    ),

                    asyncPlans.when(data: (plans){
                      return CurrentPlanCard(info: info, plans: plans);
                    }, 
                    error: (Object error, StackTrace stackTrace) { return const GoogleTextWidget(''); }, 
                    loading: () => Center(
                      child: CircularProgressIndicator(
                        color: AppTheme.secondaryColor(context),
                      ),
                    ),),
                    Padding(
                      padding: const EdgeInsets.all(4).copyWith(top: 32),
                      child: TextButton(
                        onPressed: () {
                          if (context.mounted) {
                            context.pushNamed(
                              PlansScreen.name,
                              extra: {
                                'currentPlanToRemoveFromPlans': int.parse(info.planId)
                              }
                            );
                          }
                        },
                        child: GoogleTextWidget(
                          'Otros planes',
                          style: TextStyle(
                            color: AppTheme.secondaryColor(context),
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      error: (error, stackTrace) {
        return const GoogleTextWidget('');
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class CurrentPlanCard extends StatefulWidget {
  const CurrentPlanCard({super.key, required this.info, required this.plans});
  final IndexInfo info;
  final List<PlanEntity> plans;

  @override
  State<CurrentPlanCard> createState() => _CurrentPlanCardState();
}

class _CurrentPlanCardState extends State<CurrentPlanCard> {
  bool showGridChannels = false;

  PlanEntity searchByCurentPlan(){
    final detailCurrentPlan = widget.plans.firstWhere((plan)=>plan.id.toString() == widget.info.planId, orElse: () => const PlanEntity(id: -1, planCrmId: -1, name: '', channels: 0, channelsGridImage: '', simultaneousDevices: 1, freeDays: 0, state: true, listChannel: []));
    return detailCurrentPlan;
  }

  void toggleGridChannels(bool value) {
    setState(() {
      showGridChannels = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentPlanDetail = searchByCurentPlan();

    return Column(
      children: [
        Card(
        color: AppTheme.secondaryColor(context),
        margin: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2), // Ajusta el valor del radio aquí
        ),
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
                  widget.info.plan,
                  style: TextStyle(
                    color: AppTheme.secondaryTextColor(context),
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
                GoogleTextWidget(
                  '${currentPlanDetail.freeDays} días GRATIS',
                  // '60 días GRATIS',
                  style: TextStyle(
                    color: AppTheme.secondaryTextColor(context),
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                GoogleTextWidget(
                  'Contiene + ${currentPlanDetail.channels} canales\n'
                  // 'Contiene + 120 canales\n'
                  '${currentPlanDetail.simultaneousDevices} ${currentPlanDetail.simultaneousDevices > 1 ? 'dispositivos' : 'dispositivo'} de reproducción simultánea',
                  // '1 dispositivo de reproducción simultánea',
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
                  onPressed: () { toggleGridChannels(true);},
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
        if( currentPlanDetail.listChannel.isNotEmpty && showGridChannels ) ChannelsGridsByPlan(plan: currentPlanDetail, closeBtn: () {
          toggleGridChannels(false);
        }, discoverOurPlans: () {

        },)
      ],
    );
  }
}
