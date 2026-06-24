import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supercontext/supercontext.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/providers/notifications.state.dart';
import 'package:tvapp/widgets/app_bar.widget.dart';
import 'package:tvapp/widgets/google_text.widget.dart';

class NotificationsScreen extends ConsumerStatefulWidget {
  const NotificationsScreen({super.key});

  static String name = 'Notifications';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NotificationsScreenState();
}

class _NotificationsScreenState extends ConsumerState<NotificationsScreen> {
  String? email;

  final _prefs = SharedPreferences.getInstance();

  Future<void> getEmail() async {
    final prefs = await _prefs;
    prefs.getString('email');
    setState(() {
      email = prefs.getString('email');
    });

    await prefs.setInt('lastNotificationRevision', DateTime.now().millisecondsSinceEpoch);
  }

  @override
  void initState() {
    getEmail();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (email.isNull) {
      return Center(
        child: CircularProgressIndicator(
          color: AppTheme.secondaryColor(context),
        ),
      );
    }
    final streamNotifications = ref.watch(streamNotificationsProvider(email!));

    return streamNotifications.when(
      data: (notifications) {
        return Scaffold(
          appBar: customAppBar(
            context,
            title: 'Notificaciones'
          ),
          body: notifications.isEmpty
              ? Center(
                  child: GoogleTextWidget(
                    'No hay notificaciones',
                    style: TextStyle(
                      fontSize: 32,
                      color: AppTheme.secondaryColor(context),
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              : ListView.separated(
                  padding: const EdgeInsets.all(16),
                  itemBuilder: (context, index) {
                    final notification = notifications[index];
                    return ListTile(
                      leading: notification['imageUrl'].runtimeType == String
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(notification['imageUrl']),
                            )
                          : null,
                      title: GoogleTextWidget(
                        notification['title'],
                        style: TextStyle(
                          fontSize: 12,
                          color: AppTheme.secondaryColor(context),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: GoogleTextWidget(
                        notification['body'],
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      trailing: GoogleTextWidget(
                        DateFormat('dd/MM').format(
                          notification['createdAt'].toDate(),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (_, __) {
                    return Divider(color: AppTheme.secondaryColor(context));
                  },
                  itemCount: notifications.length,
                ),
        );
      },
      error: (error, stackTrace) => Center(
        child: GoogleTextWidget(error.toString()),
      ),
      loading: () => Center(
        child: CircularProgressIndicator(
          color: AppTheme.secondaryColor(context),
        ),
      ),
    );
  }
}
