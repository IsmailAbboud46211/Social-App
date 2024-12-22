import 'package:flutter/material.dart';
import 'package:social_app/core/themes/app_color.dart';
import "dart:math";

class CustomButton extends StatelessWidget {
  final Widget child;
  final Function()? onTap;
  final bool isRotated;
  const CustomButton({
    super.key,
    required this.child,
    required this.onTap,
    required this.isRotated,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: isRotated
          ? Transform.rotate(
              angle: pi / 4,
              child: Container(
                width: 60,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: AppColors.softDark,
                ),
                child: isRotated
                    ? Transform.rotate(
                        angle: pi / 4,
                        child: child,
                      )
                    : child,
              ),
            )
          : Container(
              width: 60,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: AppColors.softDark,
              ),
              child: child,
            ),
    );
  }
}
