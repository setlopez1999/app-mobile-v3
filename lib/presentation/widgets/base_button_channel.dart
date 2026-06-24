import 'package:dbcrypt/dbcrypt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/presentation/providers/selected_category.provider.dart';
import 'package:tvapp/presentation/screens/channels/channel_details.screen.dart';
import 'package:tvapp/providers/favorites_channel.stage.dart';

import '../../domain/entities/channel.entity.dart';
import '../../domain/repositories/channels.repository.dart';
import '../../providers/channels.state.dart';
import '../../storage/secure_storage.dart';
import '../screens/player/player.screen.dart';

class BaseButtonChannel extends ConsumerWidget {
  const BaseButtonChannel({
    super.key,
    required this.child,
    required this.channel,
    required this.channels,
    required this.currentCategoryId,
    required this.onPressed,
  });

  final Widget child;
  final Channel channel;
  final List<Channel> channels;
  final String currentCategoryId;
  final Function(Channel channelLive)? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
        onTap: () async {
          //si es categoría others mostrar alerta de no contratado
          if (currentCategoryId == 'others') {
            await context.pushNamed(
              ChannelDetailsScreen.name,
              extra: channel,
            );
            return;
          }

          //validar si es canal adulto
          if (channel.adulto) {
            final isValid =
                await validateAdultPassword(context, ref);
            if (isValid == null || !isValid) {
              return;
            }
          }

          final secureStorage = ref.read(secureStorageProvider).requireValue;
          final token = secureStorage.get('token')!;
          final channelLive = await ChannelsRepository().getChannelWithStream(
            token,
            channel: channel,
          );
          if (context.mounted) {
            ref.read(selectedCategoryProvider.notifier).value(currentCategoryId);
            await context.pushNamed(
              PlayerScreen.name,
              extra: {
                'channel': channelLive,
                'channels': channels,
                'categoryId': currentCategoryId,
              },
            );

            if (onPressed != null) {
              onPressed!(channelLive);
            }
          }
        },
        child: child);
  }

  static Future<void> toggleFavorite(
      Channel channel, String categoryId, WidgetRef ref) async {
    if (channel.isFavorite) {
     /*  await ref.read(channelsProvider.notifier).deleteFavorite(
            channel.studio,
            categoryId,
          ); */
      print('eliminar');
      await ref.read(favoritesChannelsProvider.notifier).deleteFavorite(channel.studio,categoryId,);
    }else{
       await ref.read(channelsProvider.notifier).setFavorite(
          channel.studio,
          categoryId,
        ); 
    }   
  }

  //TODO: HACER WIDGETS PERSONALIZADOS PARA LAS ALERTAS EN GLOBAL
  static Future<bool?> validateAdultPassword(BuildContext context, WidgetRef ref) {
    final adultTextController = TextEditingController();

    return showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: AppTheme.primaryColor(context),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: BorderSide(
                  color: AppTheme.secondaryColor(context),
                ),
              ),
              titleTextStyle: const TextStyle(
                color: Colors.white,
              ),
              title: const Text('Control Parental'),
              content: TextField(
                keyboardType: TextInputType.number,
                controller: adultTextController,
                style: TextStyle(
                  color: AppTheme.secondaryColor(context),
                ),
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: 'Ingrese su PIN',
                ),
                obscureText: true,
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: const Text('Cancelar'),
                ),
                TextButton(
                  onPressed: () {
                    final plainText = adultTextController.text;
                    final secureStorage =
                        ref.read(secureStorageProvider).requireValue;
                    final parentalToken = secureStorage.get('parental')!;

                    final isValid = DBCrypt().checkpw(plainText, parentalToken);
                    Navigator.of(context).pop(isValid);
                  },
                  child: const Text('Aceptar'),
                ),
              ],
            ));
  }
}
