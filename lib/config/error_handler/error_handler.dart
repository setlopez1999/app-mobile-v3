import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/config/error_handler/domain_exception.dart';

import '../../providers/auth_state.dart';

class ErrorHandler extends ProviderObserver {
  @override
  void providerDidFail(
    ProviderBase<Object?> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    if (error is DioException) {
      handleDioException(error, container);
    }

    if(error is DomainException){
      handleDomainException(error, container);
    }
  }

  void handleDioException(
      DioException error, ProviderContainer providerContainer) {

    final closeSessionEvents = [
      error.requestOptions.uri.path.contains('inicio.json') &&  error.response?.statusCode == 404,
      error.requestOptions.uri.path.contains(r'st\d+\.json') &&  error.response?.statusCode == 404,
      error.requestOptions.uri.path.contains(r'/\d+\.json') &&  error.response?.statusCode == 404,
      error.requestOptions.uri.path.contains(r'/0\.json') &&  error.response?.statusCode == 404,
    ];

    if( closeSessionEvents.isNotEmpty && closeSessionEvents.any((element) => element)){
        providerContainer.read(currentAuthStateProvider.notifier).logout();
    }

  }

  void handleDomainException(DomainException error, ProviderContainer providerContainer) {
    providerContainer.read(currentAuthStateProvider.notifier).logout();
  }
}
