import 'package:flutter/material.dart';

import '../core/theme/style.dart';

enum ActionButtonType { main, secondary }

class ActionButton extends StatelessWidget {
  final ActionButtonType type;
  final String text;
  final double? minWidth;
  final void Function()? onPressed;

  const ActionButton({
    super.key,
    this.type = ActionButtonType.main,
    required this.text,
    this.minWidth,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: minWidth ?? 0.0,
        minHeight: 40.0,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          backgroundColor: type == ActionButtonType.secondary
              ? CustomColors.wireframe300
              : CustomColors.wireframe800,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: bodyMedium.copyWith(
            color: type == ActionButtonType.secondary
                ? CustomColors.wireframe800
                : Colors.white,
          ),
        ),
      ),
    );
  }
}
