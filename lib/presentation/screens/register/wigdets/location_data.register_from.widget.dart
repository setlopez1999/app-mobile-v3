import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tvapp/config/extensions/context.extension.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/domain/datasource/register_user_params.dart';
import 'package:tvapp/domain/repositories/auth.repository.dart';
import 'package:tvapp/presentation/screens/login/login.screen.dart';
import 'package:tvapp/presentation/screens/privacy_policies/privacy_policies.screen.dart';
import 'package:tvapp/presentation/screens/register/register-confirmation.screen.dart';
import 'package:tvapp/presentation/screens/terms_and_conditions/terms_and_conditions.screen.dart';
import 'package:tvapp/presentation/widgets/google_text_span.widget.dart';
import 'package:tvapp/providers/departments.state.dart';
import 'package:tvapp/providers/districts.state.dart';
import 'package:tvapp/providers/province.state.dart';
import 'package:tvapp/widgets/google_text.widget.dart';

/// Widget Location Data Form For Register
class LocationDataForm extends ConsumerStatefulWidget {
  const LocationDataForm({
    super.key,
    required this.onNext,
    this.personalData,
  });

  final VoidCallback onNext;
  final RegisterUserParams? personalData;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LocationDataFormState();
}

class _LocationDataFormState extends ConsumerState<LocationDataForm> {
  String departmentCode = '';
  String provinceCode = '';
  String districtCode = '';
  bool acceptedTermsAndPolicies = false;
  bool acceptedMarketing = false;
  bool loadingRegister = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final asyncDepartments = ref.watch(departmentsProvider);
    final asyncProvinces = ref.watch(provincesProvider);
    final asyncDistricts = ref.watch(districtsProvider);
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Row(
                      children: [
                        GoogleTextWidget(
                          'Ubicación',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: asyncDepartments.when(
                        data: (departments) {
                          return DropdownButtonFormField(
                            hint: const Text('Departamento', style: TextStyle(color: Colors.white)),
                            dropdownColor: AppTheme.primaryColor(context),
                            items: List<DropdownMenuItem<String>>.from(
                              departments.map(
                                (department) {
                                  return DropdownMenuItem(
                                    value: department.code,
                                    child: GoogleTextWidget(
                                      department.description,
                                    ),
                                  );
                                },
                              ),
                            ),
                            onChanged: (value) {
                              setState(() {
                                departmentCode = value!;
                                provinceCode = '';
                                districtCode = '';
                              });
                              ref
                                  .read(provincesProvider.notifier)
                                  .change(value!);

                              // reset districts
                              ref.read(districtsProvider.notifier).reset();
                            },
                          );
                        },
                        error: (error, stackTrace) {
                          log('', error: error, stackTrace: stackTrace);
                          return Container();
                        },
                        loading: () => Center(
                          child: CircularProgressIndicator(
                            color: AppTheme.textColor(context),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: asyncProvinces.when(
                        data: (provinces) {
                          if (provinces.isNotEmpty) {
                            return DropdownButtonFormField(
                              hint: const Text('Provincia', style: TextStyle(color: Colors.white)),

                              dropdownColor: AppTheme.primaryColor(context),
                              items: List<DropdownMenuItem<String>>.from(
                                provinces.map(
                                  (province) {
                                    return DropdownMenuItem(
                                      value: province.code,
                                      child: GoogleTextWidget(
                                        province.description,
                                      ),
                                    );
                                  },
                                ),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  provinceCode = value!;
                                  districtCode = '';
                                });
                                ref
                                    .read(districtsProvider.notifier)
                                    .change(departmentCode, value!);
                              },
                            );
                          } else {
                            return Container();
                          }
                        },
                        error: (error, stackTrace) {
                          log('', error: error, stackTrace: stackTrace);
                          return Container();
                        },
                        loading: () => Center(
                          child: CircularProgressIndicator(
                            color: AppTheme.textColor(context),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: asyncDistricts.when(
                        data: (districts) {
                          if (districts.isNotEmpty) {
                            return DropdownButtonFormField(
                              hint: const Text('Distrito', style: TextStyle(color: Colors.white)),
                              dropdownColor: AppTheme.primaryColor(context),
                              items: List<DropdownMenuItem<String>>.from(
                                districts.map(
                                  (district) {
                                    return DropdownMenuItem(
                                      value: district.code,
                                      child: GoogleTextWidget(
                                        district.description,
                                      ),
                                    );
                                  },
                                ),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  districtCode = value!;
                                });
                              },
                            );
                          } else {
                            return Container();
                          }
                        },
                        error: (error, stackTrace) {
                          log('', error: error, stackTrace: stackTrace);
                          return Container();
                        },
                        loading: () => Center(
                          child: CircularProgressIndicator(
                            color: AppTheme.textColor(context),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Row(
                        children: [
                          Transform.scale(
                            scale: 1.3,
                            child: Checkbox(
                              value: acceptedTermsAndPolicies,
                              onChanged: (value) {
                                setState(() {
                                  acceptedTermsAndPolicies = value!;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 86,
                            child: RichText(
                              text: googleTextSpan(
                                context,
                                value: 'Al crear una cuenta aceptas tu '
                                    'conformidad a nuestos ',
                                style: const TextStyle(
                                  fontSize: 9,
                                ),
                                children: [
                                  googleTextSpan(
                                    context,
                                    value: 'Términos y Condiciones',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                    onTap: () {
                                      context.pushNamed(
                                        TermsAndConditions.name,
                                      );
                                    },
                                  ),
                                  googleTextSpan(
                                    context,
                                    value: ' y ',
                                  ),
                                  googleTextSpan(
                                    context,
                                    value: 'Políticas de privacidad.',
                                    onTap: () {
                                      context.pushNamed(
                                        PrivacyPolicies.name,
                                      );
                                    },
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        children: [
                          Transform.scale(
                            scale: 1.3,
                            child: Checkbox(
                              value: acceptedMarketing,
                              onChanged: (value) {
                                setState(() {
                                  acceptedMarketing = value!;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 86,
                            child: RichText(
                              text: googleTextSpan(
                                context,
                                value: 'Acepto recibir el envío exclusivo de '
                                    'actualizaciones y promociones especiales de '
                                    'Bantel tv+',
                                style: const TextStyle(
                                  fontSize: 9,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                FilledButton(
                  style: FilledButton.styleFrom(
                    disabledBackgroundColor: Colors.grey,
                    minimumSize: const Size.fromHeight(64),
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () async =>{
                    if(!loadingRegister){
                      if(departmentCode == '' || provinceCode == '' || districtCode == ''){
                        await context.dialog(
                          icon: Icon(
                            Icons.dangerous,
                            color: AppTheme.secondaryColor(context),
                            size: 48,
                          ),
                          title: 'Error',
                          content: 'Debe completar todos los campos'
                        )
                      }else{
                        print('ENVIARRR ${departmentCode} ${provinceCode} ${districtCode} $acceptedTermsAndPolicies $acceptedMarketing'),
                        if(!acceptedTermsAndPolicies){
                          await context.dialog(
                            icon: Icon(
                              Icons.dangerous,
                              color: AppTheme.secondaryColor(context),
                              size: 48,
                            ),
                            title: 'Error',
                            content: 'Debe aceptar los términos y condiciones'
                          )
                        },

                        if( acceptedTermsAndPolicies){
                            setState(() {
                              loadingRegister = true;
                            }),
                            
                            // print('$acceptedTermsAndPolicies $acceptedMarketing')
                            await AuthRepository().register(
                              params: widget.personalData!,
                              departmentCode: departmentCode,
                              provinceCode: provinceCode,
                              districtCode: districtCode,
                              acceptTerms: acceptedTermsAndPolicies,
                              acceptPolicies: acceptedMarketing,
                            ).then((data)=>{
                              data.fold(
                                (failure) async {
                                  // Mostrar un mensaje de error o manejar el fallo
                                  await context.dialog(
                                    icon: Icon(
                                      Icons.dangerous,
                                      color: AppTheme.secondaryColor(context),
                                      size: 48,
                                    ),
                                    title: 'Error',
                                    content: failure
                                  );
                                },
                                (success) async {
                                  if (context.mounted) {
                                    context.pushReplacementNamed(RegisterConfirmationScreen.name);
                                  }
                                },
                              ),

                            setState(() {
                              loadingRegister = false;
                            }),
                            })
                       
                        }




                      },

                      
                      setState(() {
                        loadingRegister = false;
                      }),
                    },

                    
                  },
                  child: const Text('Siguiente'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
