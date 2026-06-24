import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notifications.state.g.dart';

@riverpod
Stream<List<Map<String, dynamic>>> streamNotifications(
  StreamNotificationsRef ref,
  String email,
) {
  return FirebaseFirestore.instance
      .collection('notifications')
      .where('to', whereIn: ['all', email])
      .orderBy('createdAt', descending: true)
      .snapshots()
      .map(
        (event) {
          return List<Map<String, dynamic>>.from(
            event.docs.map((e) => e.data()),
          );
        },
      );
}
