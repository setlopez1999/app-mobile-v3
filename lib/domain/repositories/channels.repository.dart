import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tvapp/config/environment/environment.dart';
import 'package:tvapp/domain/entities/category.entity.dart';
import 'package:tvapp/domain/entities/channel.entity.dart';
import 'package:tvapp/domain/entities/channel_not_plan.entity.dart';
import 'package:tvapp/domain/entities/epg.entity.dart';
import 'package:tvapp/domain/repositories/index.repository.dart';

import '../../config/error_handler/domain_exception.dart';

/// Channels Repository
class ChannelsRepository {
  final _prefs = SharedPreferences.getInstance();
  final indexRepository = IndexRepository();
  final dio = Dio();

  Future<List<ChannelNotPlan>> getNotPlanChannels() async {
    final prefs = await _prefs;
    final email = prefs.getString('email');
    try {
      final res = await dio.get<Map<String, dynamic>>(
          '${Environment.baseHost}/api/channelsnoplan',
          data: {
            'user': email,
          },
          options: Options(
            validateStatus: (status) => true,
          ));
      final data = res.data!['data'];

      final favorites = await getFavorites(email!);

      if (data is List) {
        return data
            .map(
              (channel) =>
              ChannelNotPlan.fromJson({
                ...channel,
                'isFavorite': favorites.contains(channel['studio']),
              }),
        )
            .toList();
      }

      return [];
    }catch (e) {
      if(kDebugMode) {
        print(e);
      }
      return [];
    }
  }

  Future<Channel> getChannelWithStream(
    String token, {
    required Channel channel,
  }) async {
    final prefs = await _prefs;
    final res = await dio.get(
      '${Environment.baseHost}/$token/${channel.studio}.json',
      options: Options(
        headers: {
          'user-agent': Platform.isAndroid ? 'APPMOVIL-${prefs.getString("deviceID")}' : 'APPMOVILIOS-${prefs.getString("deviceID")}',
        },
      ),
    );
    final data = res.data!;

    if(data is Map && data.containsKey('code') && data['code'] == 400) {
      throw DomainException();
    }

    final streamLink = data['linkMovil'];
    final List<EpgEntity> epgList = (data['epg'] as List<dynamic>? ?? [])
    .map((item) => EpgEntity.fromJson(item as Map<String, dynamic>))
    .toList();
   
    return channel.copyWith(
      streamLink: streamLink,
      epg: epgList
    );
  }

  Future<List<Channel>> channelsFromCategory(
    String token, {
    required String categoryId,
    required String email,
  }) async {
    final res = await dio.get(
      '${Environment.baseHost}/$token/st$categoryId.json',
    );

    final data = res.data!;

    if(data is Map && data.containsKey('code') && data['code'] == 400) {
      throw DomainException();
    }

    final favorites = await getFavorites(email);

    final section = data[0]['section'];
    final channels = List<Channel>.from(
      section['videos'].map((channel) {
        return Channel.fromJson(
          {
            ...channel,
            'isFavorite': favorites.contains(channel['studio']),
          },
        );
      }),
    )..sort((a, b) => a.number.compareTo(b.number));
    return channels;
  }

  Future<List<int>> getFavorites(String email, {bool receiveChannels = true}) async {
    try {
      final res = await dio.post(
        '${Environment.baseHost}/api/get-favorite?user_email=$email',
      );

      final data = res.data!;

      if(data is Map && data.containsKey('code') && data['code'] == 400) {
        throw DomainException();
      }

      return List<int>.from(
        data['channels'].map((channel) => receiveChannels ? channel['cn_id'] : channel['category_id']),
      );
    }catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return [];
    }
  }
  Future<List<Channel>> getAllChannelsFromFavorites() async {
    final prefs = await _prefs;
    final email = prefs.getString('email');

    try {
      final res = await dio.post(
        '${Environment.baseHost}/api/get-favorite?user_email=$email',
      );

      final data = res.data!;

      if(data is Map && data.containsKey('code') && data['code'] == 400) {
        throw DomainException();
      }

       return List<Channel>.from(
        data['channels'].map((channel) => Channel(
          adulto: channel['adulto'] == 1,
          card: channel['imagen'], //
          cardIos: channel['imagen'], //
          description: channel['descripcion'],
          number: channel['numero'],
          playlist: 0,
          epg: [],
          premium: channel['premium'] == 1,
          catchup: channel['catchup'] == 1,
          studio: channel['cn_id'], //
          title: channel['nombre'],
          vivo: channel['vivo']))
      );
    }catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return [];
    }
  }

  Future<List<Channel>> getFavoritesChannelsFromCategory(String token,
      {required String categoryId}) async {
    final prefs = await _prefs;
    final email = prefs.getString('email');
    final favorites = await getFavorites(email!);
    final channels = await channelsFromCategory(
      token,
      categoryId: categoryId,
      email: email,
    );

    channels.sort((a, b) => a.number.compareTo(b.number));

    return channels
        .where((channel) => favorites.contains(channel.studio))
        .toList();
  }

  Future<void> setFavorite(String email, int channelId) async {
    await dio.post(
      '${Environment.baseHost}/api/set-favorite',
      options: Options(headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
      }),
      data: jsonEncode(
        {
          'user_email': email,
          'channel_id': channelId,
        },
      ),
    );
  }

  Future<void> deleteFavorite(String email, int channelId) async {
    await dio.post(
      '${Environment.baseHost}/api/delete-favorite',
      options: Options(headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
      }),
      data: jsonEncode(
        {
          'user_email': email,
          'channel_id': channelId,
        },
      ),
    );
  }

  /// Search channels
  Future<List<Map<String, dynamic>>> getSearchableJson(String token) async {
    try {
      final res = await dio.get('${Environment.baseHost}/$token/0.json');

      final data = res.data!;

      if(data is Map && data.containsKey('code') && data['code'] == 400) {
        throw DomainException();
      }

      return List<Map<String, dynamic>>.from(
        data.map(
          (channel) {
            return channel as Map<String, dynamic>;
          },
        ),
      );
    } catch (e) {
      return []; 
    }
  }

  Future<List<CategoryEntity>> getFavoriteCategories(String token) async {
    final indexInfo = await indexRepository.getHomeInfo(token);
    final categories = indexInfo.categories;
    final prefs = await _prefs;
    final email = prefs.getString('email');
    final favoriteCategories = <CategoryEntity>[];

    final favorites = await getFavorites(email!, receiveChannels: false);

    //TODO: REFACTORIZADO
    for (final category in categories) {
      final exists = favorites.contains(int.parse(category.id));
      if (exists) {
        favoriteCategories.add(category);
      }
    }

    return favoriteCategories;
  }

  void sendRating(String token , String channelId) {
    //manejamos este error porque si falla el rating no debe cerrar la sesión
    //en el error_handler
    try {
      dio.get('${Environment.baseHost}/$token/$channelId.json');
    }catch (e) {
      if(kDebugMode) {
        print(e);
      }
    }
  }
}
