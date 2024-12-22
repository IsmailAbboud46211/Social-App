// ignore: file_names
import 'package:flutter/material.dart';
import 'package:social_app/core/themes/app_color.dart';
import 'package:social_app/core/utils/images.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 1.0,
            color: AppColors.softDark,
          )),
      child: const CircleAvatar(
        radius: 35.0,
        backgroundImage: AssetImage(Images.profileImage),
      ),
    );
  }
}
