import 'package:biblioteca_components/src/text_styles.dart';
import 'package:flutter/material.dart';

class MainButton extends ElevatedButton {
  MainButton({required String title, VoidCallback? onPressed, super.key})
      : super(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
          child: Text(
            title,
            style: MainTextStyles.bodyMediumBold.copyWith(color: Colors.black),
          ),
        );
}
