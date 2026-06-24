import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/domain/entities/tools/chat_message.dart';
import 'package:tvapp/domain/repositories/tools/chat_repository.dart';
import 'package:tvapp/providers/tools/tools_providers_core.dart';
import 'package:tvapp/storage/tools/local_storage.dart';

final chatRepositoryProvider = Provider<ChatRepository>((ref) {
  return ChatRepository(apiClient: ref.watch(apiClientProvider));
});

final chatProvider =
    StateNotifierProvider<ChatNotifier, List<ChatMessage>>((ref) {
  return ChatNotifier(ref.watch(chatRepositoryProvider));
});

class ChatNotifier extends StateNotifier<List<ChatMessage>> {
  final ChatRepository _repo;
  String? _sessionId;

  ChatNotifier(this._repo)
      : super([
          ChatMessage(
            text:
                'Hola, soy tu asistente virtual. ¿En qué puedo ayudarte hoy?',
            isUser: false,
            timestamp: DateTime.now(),
          ),
        ]);

  Future<void> sendMessage(String text) async {
    final userMessage =
        ChatMessage(text: text, isUser: true, timestamp: DateTime.now());
    final botTyping =
        ChatMessage(text: '...', isUser: false, timestamp: DateTime.now());
    state = [...state, userMessage, botTyping];

    final response = await _repo.sendMessage(text, sessionId: _sessionId);
    _sessionId = response['session_id'] as String?;
    if (_sessionId != null) {
      await LocalStorage.setChatSessionId(_sessionId!);
    }
    final reply = response['reply'] as String? ?? 'Sin respuesta';
    state = [
      for (final msg in state)
        if (msg == botTyping)
          msg.copyWith(text: reply, timestamp: DateTime.now())
        else
          msg,
    ];
  }

  void clearChat() {
    _sessionId = null;
    LocalStorage.removeChatSessionId();
    state = [
      ChatMessage(
        text: 'Chat reiniciado. ¿En qué puedo ayudarte hoy?',
        isUser: false,
        timestamp: DateTime.now(),
      ),
    ];
  }
}
