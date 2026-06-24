import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supercontext/supercontext.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/widgets/google_text.widget.dart';

/// Custom app bar
AppBar customAppBar(
  BuildContext context, {
  Color? backgroundColor,
  String? title,
  Widget? leading,
  List<Widget>? actions,
  PreferredSizeWidget? bottom,
}) {
  return AppBar(
    backgroundColor: AppTheme.primaryColor(context),
    leading: leading.isNotNull
        ? leading!
        : !ModalRoute.of(context)!.isFirst
            ? IconButton(
                onPressed: context.pop,
                icon: const Icon(Icons.arrow_back_rounded, size: 32),
                color: AppTheme.textColor(context),
              )
            : null,
    title: GoogleTextWidget(
      title ?? '',
      style: const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 22
      ),
    ),
    actions: actions,
    bottom: bottom,
  );
}
