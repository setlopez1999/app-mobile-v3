import 'package:dio/dio.dart';
import 'package:tvapp/config/environment/environment.dart';
import 'package:tvapp/domain/entities/plan.entity.dart';

class PlansRepository {
  final dio = Dio();

  Future<List<PlanEntity>> getList() async {
    final res = await dio.get('${Environment.middlewareHost}/api/plan/listAllPlanWithChannels');

    final data = res.data!;
    return List<PlanEntity>.from(data['data'].map((plan) {
      return PlanEntity.fromJson(plan);
    }));
  }

  Future<bool> isAValidChannelInPlan(String userEmail, String channelId) async {
    final res = await dio.post('${Environment.baseHost}/api/channelplan?'
       'user=$userEmail&'
       'cn_id=$channelId'
    );
    final data = res.data!;
    return data['code'] == 200 ;
  }
}
