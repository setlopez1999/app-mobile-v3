import 'package:dio/dio.dart';

class AdsRepository {
  final dio = Dio();

  Future<String> getAds() async {
    final response = await dio.get(
      'https://bantelweb.iptvperu.tv/api/cms/publication',
    );
    return response.data![0]['url'];
  }
}
