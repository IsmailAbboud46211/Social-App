import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:social_app/core/extension/media_query.dart';
import 'package:social_app/core/themes/app_color.dart';
import 'dart:math';

class ProfileBackground extends StatelessWidget {
  final Widget child;
  const ProfileBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -50,
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
            top: 0,
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
            top: -100,
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
