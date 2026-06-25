import 'package:dio/dio.dart';

class ChatRepository {
  final Dio apiClient;

  ChatRepository({required this.apiClient});

  Future<Map<String, dynamic>> sendMessage(
    String text, {
    String? sessionId,
  }) async {
    return {'reply': 'Mensaje recibido: $text', 'session_id': sessionId ?? 'mock-session'};
  }
}
