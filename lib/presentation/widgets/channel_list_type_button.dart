import 'package:flutter/material.dart';

import '../../domain/enums/list_type.enum.dart';

class ChannelListTypeButton extends StatelessWidget {
  const ChannelListTypeButton({
    super.key,
    required this.listType,
    required this.onPressed,
  });

  final ListType listType;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets
          .symmetric(horizontal: 14)
          .copyWith(bottom: 16),
      child: Row(
        children: [
          SizedBox(
            width: 34,
            child: MaterialButton(
              onPressed: onPressed,
              padding: EdgeInsets.zero,
              child: Image.asset(
                listType == ListType.list
                    ? 'assets/icons/grid.png'
                    : 'assets/icons/list.png',
                width: 24,
                height: 24,
              )
            )
          ),
        ],
      )
    );
  }
}
