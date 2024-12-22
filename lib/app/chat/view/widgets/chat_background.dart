import 'dart:math';

import 'package:flutter/material.dart';
import 'package:social_app/core/extension/media_query.dart';
import 'package:social_app/core/themes/app_color.dart';

class ChatBackground extends StatelessWidget {
  final Widget child;
  const ChatBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: -75,
            child: Transform.rotate(
              angle: pi / 4,
              child: Container(
                height: context.height / 2,
                width: context.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      width: 2,
                      color: AppColors.seconderyColor.withAlpha(175),
                    )),
              ),
            ),
          ),
          Positioned(
            bottom: -25,
            child: Transform.rotate(
              angle: pi / 4,
              child: Container(
                height: context.height / 2,
                width: context.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      width: 2,
                      color: AppColors.seconderyColor.withAlpha(175),
                    )),
              ),
            ),
          ),
          Positioned(
            bottom: -150,
            child: Transform.rotate(
              angle: pi / 4,
              child: Container(
                height: context.height / 2,
                width: context.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColors.primaryColor.withAlpha(175),
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
