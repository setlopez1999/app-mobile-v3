import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tvapp/config/environment/environment.dart';
import 'package:tvapp/domain/entities/program_guide.entity.dart';

/// Epg repository
class EpgRepository {
  final dio = Dio();
  final _prefs = SharedPreferences.getInstance();

  /// Get tv guide
  Future<List<TvGuideEntity>> getList() async {
    final prefs = await _prefs;
    final email = prefs.getString('email');
    final res = await dio.post(
      '${Environment.baseHost}/api/get-epgguide?user=$email',
    );

    if (res.statusCode == 200) {
      final data = res.data!;
      return List<TvGuideEntity>.from(
        data.map(
          (guide) {
            return TvGuideEntity.fromJson(guide);
          },
        ),
      );
    }

    return <TvGuideEntity>[];
  }
}
