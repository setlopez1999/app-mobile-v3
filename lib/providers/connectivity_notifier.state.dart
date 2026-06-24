import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'connectivity_notifier.state.g.dart'; // Riverpod annotation generation

class ConnectivityStates {
  ConnectivityStates({required this.isConnected, this.isDialogClosedManually = false});
  final bool isConnected;
  final bool isDialogClosedManually;

  ConnectivityStates copyWith({bool? isConnected, bool? isDialogClosedManually}) {
    return ConnectivityStates(
      isConnected: isConnected ?? this.isConnected,
      isDialogClosedManually: isDialogClosedManually ?? this.isDialogClosedManually,
    );
  }
}

@riverpod
class ConnectivityNotifier extends _$ConnectivityNotifier {
  @override
  Future<ConnectivityStates> build() async {
    await startMonitoring();
    return ConnectivityStates(isConnected: true);
    // return ConnectivityStates(isConnected: await checkFirstConnectivity());
  }

  Future<void> startMonitoring() async {
    final connectivity = Connectivity();
    connectivity.onConnectivityChanged.listen((List<ConnectivityResult> result) {
      final typeOfConnectivity = result.first;
      final isConnected = typeOfConnectivity != ConnectivityResult.none;
      // print('isConnected $isConnected');
      state = AsyncData(state.value!.copyWith(isConnected: isConnected));
    });
  }

  Future<bool> checkFirstConnectivity() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    final typeOfConnectivity = connectivityResult.first;
    final isConnected = typeOfConnectivity != ConnectivityResult.none;
    return isConnected;
  }


  Future<bool> checkConnectivity() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    final typeOfConnectivity = connectivityResult.first;
    final isConnected = typeOfConnectivity != ConnectivityResult.none;

    // print('isConnected $isConnected');
    state = AsyncData(ConnectivityStates(isConnected: isConnected, isDialogClosedManually: false));

    return isConnected;
  }

  void closeDialogManually() {
    state = AsyncData(state.value!.copyWith(isDialogClosedManually: true));
  }
}