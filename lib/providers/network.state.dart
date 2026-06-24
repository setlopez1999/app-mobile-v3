import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'network.state.g.dart';

@riverpod
Stream<List<ConnectivityResult>> nertwork(Ref ref) {
  return Connectivity().onConnectivityChanged;
}
