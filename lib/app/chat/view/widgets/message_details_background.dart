import 'package:flutter/material.dart';
import 'package:social_app/core/extension/media_query.dart';
import 'package:social_app/core/themes/app_color.dart';

class MessageDetailsBackground extends StatelessWidget {
  final Widget child;
  const MessageDetailsBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: context.height / 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(25),
              color: AppColors.primaryColor,
            ),
          ),
          child
        ],
      ),
    );
  }
}
