// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app/app/chat/view/chat_screen.dart';
import 'package:social_app/app/favorite_posts.dart/view/favorites_screen.dart';
import 'package:social_app/app/controller/view/widgets/custom_button.dart';
import 'package:social_app/app/home/view/home_screen.dart';
import 'package:social_app/app/profile/view/profile_screen.dart';
import 'package:social_app/core/extension/media_query.dart';
import 'package:social_app/core/extension/routing_extenstion.dart';
import 'package:social_app/core/extension/sized_box.dart';
import 'package:social_app/core/router/route_name.dart';
import 'package:social_app/core/themes/app_color.dart';
import 'package:social_app/core/utils/icons.dart';

class Controller extends StatefulWidget {
  const Controller({super.key});

  @override
  State<Controller> createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  //* current index
  int _currentIndex = 0;

  //* List of screens
  final List<Widget> _screens = [
    const HomeScreen(),
    const ProfileScreen(),
    const ChatScreen(),
    const FavoritesScreen(),
  ];

  //* change index
  void _changeIndex({required int index}) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomButton(
        isRotated: true,
        onTap: () => context.go(routeName: RoutesNames.addPage),
        child: SvgPicture.asset(AppIcons.plusIcon),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: context.height / 15,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColors.softWhite,
            boxShadow: [
              BoxShadow(
                blurRadius: 15,
                offset: const Offset(0, 4),
                color: AppColors.lightGrey,
              )
            ],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => _changeIndex(index: 0),
                child: SvgPicture.asset(
                  AppIcons.homeIcon,
                  color: _currentIndex == 0 ? AppColors.primaryColor : null,
                ),
              ),
              GestureDetector(
                onTap: () => _changeIndex(index: 1),
                child: SvgPicture.asset(
                  AppIcons.profileIcon,
                  color: _currentIndex == 1 ? AppColors.primaryColor : null,
                ),
              ),
              (context.width / 8).pw,
              GestureDetector(
                onTap: () => _changeIndex(index: 2),
                child: SvgPicture.asset(
                  AppIcons.messageIcon,
                  color: _currentIndex == 2 ? AppColors.primaryColor : null,
                ),
              ),
              GestureDetector(
                onTap: () => _changeIndex(index: 3),
                child: SvgPicture.asset(
                  AppIcons.favoriteBorderIcon,
                  color: _currentIndex == 3 ? AppColors.primaryColor : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
