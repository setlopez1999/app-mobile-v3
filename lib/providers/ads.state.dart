import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tvapp/domain/repositories/ads.repository.dart';

part 'ads.state.g.dart';

@riverpod
class AdsState extends _$AdsState {
  final respository = AdsRepository();
  @override
  FutureOr<String> build() {
    return respository.getAds();
  }
}

@riverpod
Stream<String> streamAds(StreamAdsRef ref) {
  final snapshot =
      FirebaseFirestore.instance.collection('config').doc('ads').snapshots();

  return snapshot.map((document) {
    return document.data()!['imageUrl'];
  });
}
