import 'package:flutter/material.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/domain/entities/plan.entity.dart';
import 'package:tvapp/widgets/google_text.widget.dart';
import 'package:url_launcher/url_launcher.dart';

class ChannelsGridsByPlan extends StatelessWidget {
  const ChannelsGridsByPlan({
    super.key, required this.plan, required this.closeBtn, required this.discoverOurPlans,
  });
  final PlanEntity plan;
  final VoidCallback closeBtn;
  final VoidCallback discoverOurPlans;

  @override
  Widget build(BuildContext context) {
    return  Stack(
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
                    onPressed: (){
                      launchUrl(
                        Uri.parse('https://bantelweb.iptvperu.tv/login'),
                        mode: LaunchMode.externalApplication,
                      );
                      discoverOurPlans();
                    }
                    /* () {
                      launchUrl(
                        Uri.parse('https://bantelweb.iptvperu.tv/login'),
                        mode: LaunchMode.externalApplication,
                      );
                      setState(() {
                        showChannlesGrid = index;
                      });
                    } */
                    ,
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
            onPressed: closeBtn,
            icon: const Icon(Icons.close, weight : 10, color:  Colors.black,),
          ),
        ),
      ],
    );
  }
}
