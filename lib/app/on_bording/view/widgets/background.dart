import 'package:flutter/material.dart';
import 'package:social_app/core/extension/media_query.dart';
import 'package:social_app/core/themes/app_color.dart';
import 'dart:math';

class Background extends StatelessWidget {
  final Widget child;
  const Background({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: context.height * -0.20,
            left: context.height * -0.20,
            child: Transform.rotate(
              angle: pi / 4,
              child: Container(
                height: context.height,
                width: context.width,
                padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(155),
                    border: Border.all(
                      width: 1.0,
                      color: AppColors.seconderyColor,
                    )),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(152),
                    color: AppColors.primaryColor.withAlpha(175),
                  ),
                ),
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
