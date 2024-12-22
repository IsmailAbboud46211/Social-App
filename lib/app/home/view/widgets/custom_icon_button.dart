// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_app/core/extension/media_query.dart';
import 'package:social_app/core/extension/sized_box.dart';
import 'package:social_app/core/themes/app_color.dart';

class CustomIconButton extends StatelessWidget {
  final String iconPath;
  final String number;
  const CustomIconButton({super.key, required this.iconPath, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
          color: AppColors.softWhite.withOpacity(0.40), borderRadius: BorderRadius.circular(34)),
      child: Row(
        children: [
          SvgPicture.asset(
            iconPath,
            color: AppColors.softWhite,
          ),
          (context.width / 80).pw,
          Text(
            number,
            style: TextStyle(color: AppColors.softWhite),
          ),
        ],
      ),
    );
  }
}
