import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/domain/datasource/register_user_params.dart';
import 'package:tvapp/presentation/screens/register/wigdets/location_data.register_from.widget.dart';
import 'package:tvapp/presentation/screens/register/wigdets/personal_data.register_form.widget.dart';
import 'package:tvapp/widgets/app_bar.widget.dart';
import 'package:tvapp/widgets/google_text.widget.dart';

/// Register Screen
class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  static String name = 'register';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  RegisterUserParams? _personalData;

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        leading: IconButton(
          onPressed: () {
            if (currentIndex == 0) {
              context.pop();
            } else {
              setState(() {
                currentIndex = 0;
              });
              _tabController.animateTo(0);
              // _personalData = 
              // print('_personalDataAA ${_personalData}');
            }
          },
          icon: const Icon(Icons.arrow_back, size: 32),
          color: AppTheme.textColor(context),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(39),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                GoogleTextWidget(
                  'Registro',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          PersonalDataForm(
            personalData: _personalData,
            onNext: (personalData) {
              setState(() {
                currentIndex = 1;
                _personalData = personalData;
              });
              _tabController.animateTo(1);
            },
          ),
          LocationDataForm(
            personalData: _personalData,
            onNext: () {},
          ),
        ],
      ),
    );
  }
}
