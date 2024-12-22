import 'dart:math';

import 'package:flutter/material.dart';
import 'package:social_app/core/extension/media_query.dart';
import 'package:social_app/core/themes/app_color.dart';

class FavoritesBackground extends StatelessWidget {
  final Widget child;
  const FavoritesBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -55,
            right: -175,
            child: Transform.rotate(
              angle: pi / 4,
              child: Container(
                width: context.width / 1.5,
                height: context.height / 1.5,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor.withAlpha(175),
                  borderRadius: BorderRadius.circular(150),
                ),
              ),
            ),
          ),
          Positioned(
            top: -55,
            right: -175,
            child: Transform.rotate(
              angle: pi / 4,
              child: Container(
                width: context.width / 2,
                height: context.height / 1.5,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.seconderyColor.withAlpha(175),
                  ),
                  borderRadius: BorderRadius.circular(150),
                ),
              ),
            ),
          ),
          Positioned(
            top: -55,
            right: -175,
            child: Transform.rotate(
              angle: pi / 4,
              child: Container(
                width: context.width / 2.5,
                height: context.height / 1.5,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.seconderyColor.withAlpha(175),
                  ),
                  borderRadius: BorderRadius.circular(150),
                ),
              ),
            ),
          ),
          child
        ],
      ),
    );
  }
}
