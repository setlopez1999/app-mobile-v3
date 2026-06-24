import 'package:flutter/material.dart';

import '../../config/theme/app.theme.dart';
import '../../domain/entities/category.entity.dart';
import '../../domain/handlers/check_index.handler.dart';
import '../../widgets/google_text.widget.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip({
    super.key,
    required this.category,
    required this.categoryActive,
    required this.onPressed,
  });

  final CategoryEntity category;
  final String categoryActive;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 120,
      ),
      child: MaterialButton(
        color: checkIndex<Color, String>(
          category.id,
          compareIndex: categoryActive,
          onTrue: AppTheme.secondaryColor(context),
          onFalse: AppTheme.textColor(context).withOpacity(
            0.24,
          ),
        ),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: GoogleTextWidget(
            category.name,
            style: TextStyle(
              color: checkIndex<Color, String>(
                category.id,
                compareIndex: categoryActive,
                onTrue: AppTheme.primaryColor(context),
                onFalse: AppTheme.textColor(context),
              ),
              fontWeight: checkIndex<FontWeight, String>(
                category.id,
                compareIndex: categoryActive,
                onTrue: FontWeight.w700,
                onFalse: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
