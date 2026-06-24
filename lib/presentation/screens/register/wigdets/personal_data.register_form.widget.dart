import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supercontext/supercontext.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/domain/datasource/register_user_params.dart';
import 'package:tvapp/presentation/widgets/google_text_span.widget.dart';
import 'package:tvapp/widgets/google_text.widget.dart';

/// Widget Personal Data Form For Register
class PersonalDataForm extends ConsumerStatefulWidget {
  const PersonalDataForm({super.key, required this.onNext, this.personalData});

  final ValueChanged<RegisterUserParams>? onNext;
  final RegisterUserParams? personalData;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PersonalDataFormState();
}

class _PersonalDataFormState extends ConsumerState<PersonalDataForm> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _dniNumberController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void initState() {
    if (widget.personalData.isNotNull) {
      final formUserValues = widget.personalData;
      _firstNameController.text = formUserValues!.firstName;
      _lastNameController.text = formUserValues.lastName;
      _dniNumberController.text = formUserValues.dni;
      _phoneNumberController.text = formUserValues.phoneNumber;
      _emailController.text = formUserValues.email;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: [
                const Row(
                  children: [
                    GoogleTextWidget(
                      'Datos personales',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: TextFormField(
                    controller: _firstNameController,
                    cursorColor: AppTheme.textColor(context),
                    style: googleStyle(context),
                    decoration: const InputDecoration(
                      hintText: 'Nombre',
                    ),
                    validator: (value) {
                      if (value.isNotNull && value!.isEmpty) {
                        return 'Este campo es requerido.';
                      } else if (value!.length < 3) {
                        return 'El nombre debe tener al menos 3 caracteres.';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: _lastNameController,
                    cursorColor: AppTheme.textColor(context),
                    style: googleStyle(context),
                    decoration: const InputDecoration(
                      hintText: 'Apellidos',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Este campo es requerido.';
                      }
                      else if (!RegExp(r'^\S+\s+\S+').hasMatch(value)) {
                        return 'Debe colocar sus dos apellidos.';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: _dniNumberController,
                    cursorColor: AppTheme.textColor(context),
                    style: googleStyle(context),
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'DNI*',
                    ),
                    validator: (value) {
                      if (value.isNotNull && value!.isEmpty) {
                        return 'Este campo es requerido.';
                      } else if (value!.length != 8) {
                        return 'Ingrese un DNI de 8 dígitos.';
                        // return 'Ingrese un DNI de 8 dígitos o CE de 9 dígitos.';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: _phoneNumberController,
                    cursorColor: AppTheme.textColor(context),
                    style: googleStyle(context),
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      hintText: 'Celular',
                    ),
                    validator: (value) {
                      if (value.isNotNull && value!.isEmpty) {
                        return 'Este campo es requerido.';
                      } else if (value!.length < 9) {
                        return 'Ingrese un número de 9 dígitos.';
                      } else if (!value.startsWith('9')) {
                        return 'El número de celular debe comenzar con 9.';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: _emailController,
                    cursorColor: AppTheme.textColor(context),
                    style: googleStyle(context),
                    decoration: const InputDecoration(
                      hintText: 'Correo electrónico',
                    ),
                     validator: (value) {
                      if (value == null && value!.isEmpty) {
                        return 'Este campo es requerido.';
                      }
                      final emailRegExp = RegExp(r'^[a-zA-Z0-9.a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
                      if (!emailRegExp.hasMatch(value)) {
                        return 'Ingrese un correo electrónico válido.';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16)
                      .copyWith(bottom: 16),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: googleTextSpan(
                      context,
                      value: 'Vive la experiencia de ',
                      style: const TextStyle(
                        fontSize: 13,
                      ),
                      children: [
                        googleTextSpan(
                          context,
                          value: 'Bantel tv+',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        googleTextSpan(
                          context,
                          value: ' con más de ',
                        ),
                        googleTextSpan(
                          context,
                          value: '140 canales gratis',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        googleTextSpan(
                          context,
                          value: ' del Plan Full por 60 días.',
                        ),
                      ],
                    ),
                  ),
                ),
                FilledButton(
                  style: FilledButton.styleFrom(
                    minimumSize: const Size.fromHeight(64),
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      final onNext = widget.onNext;
                      if (onNext != null) {
                        onNext(
                          RegisterUserParams(
                            firstName: _firstNameController.text,
                            lastName: _lastNameController.text,
                            dni: _dniNumberController.text,
                            phoneNumber: _phoneNumberController.text,
                            email: _emailController.text,
                          ),
                        );
                      }
                    }
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
