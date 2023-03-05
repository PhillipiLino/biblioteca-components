import 'package:biblioteca_components/biblioteca_components.dart';
import 'package:flutter/material.dart';

class EmptyList extends StatelessWidget {
  final String title;
  final String message;
  final Widget? button;
  final Widget? image;
  final Color? textColor;

  const EmptyList({
    required this.title,
    required this.message,
    this.button,
    this.image,
    this.textColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (image != null) image!,
            const SizedBox(height: 12),
            Text(
              title,
              textAlign: TextAlign.center,
              style: MainTextStyles.bodyLargeBold.copyWith(color: textColor),
            ),
            const SizedBox(height: 12),
            Text(
              message,
              textAlign: TextAlign.center,
              style: MainTextStyles.bodyMediumRegular.copyWith(
                color: textColor,
              ),
            ),
            const SizedBox(height: 20),
            if (button != null)
              SizedBox(
                width: double.maxFinite,
                child: button,
              )
          ],
        ),
      ),
    );
  }
}
