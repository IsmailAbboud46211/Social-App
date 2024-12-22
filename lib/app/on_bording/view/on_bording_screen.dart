import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app/app/on_bording/data/model/single_screen.dart';
import 'package:social_app/app/on_bording/view/widgets/background.dart';
import 'package:social_app/core/extension/media_query.dart';
import 'package:social_app/core/extension/routing_extenstion.dart';
import 'package:social_app/core/extension/sized_box.dart';
import 'package:social_app/core/router/route_name.dart';
import 'package:social_app/core/themes/app_color.dart';
import 'package:social_app/core/utils/images.dart';
import 'dart:math';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({super.key});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  //* current Index
  int _pageIndex = 0;

  //* change page index
  void _onPageChanged(index) {
    setState(() {
      _pageIndex = index;
    });
  }

//* List of screens
  final List<SingleScreen> _screens = [
    SingleScreen(
      title: "Welcome to",
      subTitle: "Socialy app",
      imagePath: Images.heroImage,
    ),
    SingleScreen(
      title: "Enjoy with ",
      subTitle: "Chating others",
      imagePath: Images.hero2Image,
    ),
    SingleScreen(
      title: "Share your",
      subTitle: "Photos",
      imagePath: Images.hero3Image,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Background(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          (context.height / 12).ph,
          SizedBox(
            height: context.height / 2,
            width: double.infinity,
            child: PageView.builder(
              itemCount: _screens.length,
              onPageChanged: _onPageChanged,
              itemBuilder: (context, index) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    _screens[index].title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    _screens[index].subTitle,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  (context.height / 20).ph,
                  SvgPicture.asset(
                    _screens[index].imagePath,
                    height: 250,
                  ),
                ],
              ),
            ),
          ),
          (context.height / 25).ph,
          //* Create dots ...
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => Container(
                margin: const EdgeInsets.all(3.5),
                height: 12.0,
                width: 12.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _pageIndex == index ? AppColors.softDark : null,
                    border: Border.all(
                      width: 1.0,
                      color: AppColors.softDark,
                    )),
              ),
            ),
          ),
          //* build steeper
          Expanded(
            child: GestureDetector(
              onTap: () => context.go(
                routeName: RoutesNames.controller,
                replacement: true,
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: -25,
                    right: -50,
                    child: Transform.rotate(
                      angle: pi / 4,
                      child: Container(
                        height: context.width * 0.7,
                        width: context.width * 0.68,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(88),
                            border: Border.all(
                              width: 1.0,
                              color: AppColors.softDark,
                            )),
                        child: Container(
                          height: context.width * 0.6,
                          width: context.width * 0.62,
                          decoration: BoxDecoration(
                            color: _pageIndex.isEven ? AppColors.softDark : AppColors.seconderyColor,
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: Transform.rotate(
                            angle: -pi / 4,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Next",
                                  style: TextStyle(color: _pageIndex.isEven ? AppColors.softWhite : null),
                                ),
                                (context.height / 50).pw,
                                Icon(
                                  Icons.forward_sharp,
                                  color: _pageIndex.isEven ? AppColors.softWhite : null,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
