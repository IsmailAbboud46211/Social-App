// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app/app/home/view/widgets/custom_icon_button.dart';
import 'package:social_app/app/home/view/widgets/home_background.dart';
import 'package:social_app/core/extension/media_query.dart';
import 'package:social_app/core/extension/sized_box.dart';
import 'package:social_app/core/themes/app_color.dart';
import 'package:social_app/core/utils/icons.dart';
import 'package:social_app/core/utils/images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeBackground(
      child: Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Socialy"),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(onPressed: () {}, icon: SvgPicture.asset(AppIcons.notifIcon)),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Feed",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                (context.height / 40).ph,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      //* add icon
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: AppColors.seconderyColor,
                        child: SvgPicture.asset(AppIcons.onluPlusIcon),
                      ),
                      //* build list of profiles
                      ...List.generate(
                        5,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            width: 56,
                            height: 56,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(
                                      Images.profileImage,
                                    ),
                                    fit: BoxFit.cover),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 2,
                                  color: AppColors.seconderyColor,
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                //* build list of posts
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 24.0),
                    padding: const EdgeInsets.all(14),
                    width: double.infinity,
                    height: context.height * 0.4,
                    decoration: BoxDecoration(
                        color: AppColors.babyBlue,
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage("assets/images/building-${index + 1}.jpg"),
                          fit: BoxFit.cover,
                        )),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  backgroundImage: AssetImage(Images.profileImage),
                                ),
                                (context.width / 40).pw,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "User $index",
                                      style: TextStyle(color: AppColors.softWhite),
                                    ),
                                    Text(
                                      "2 hours active",
                                      style: TextStyle(color: AppColors.lightGrey),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.more_vert,
                                  color: AppColors.softWhite,
                                ))
                          ],
                        ),
                        const Spacer(),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomIconButton(
                              iconPath: AppIcons.favoriteBorderIcon,
                              number: "1 K",
                            ),
                            CustomIconButton(
                              iconPath: AppIcons.messageIcon,
                              number: "1.2 K",
                            ),
                            CustomIconButton(
                              iconPath: AppIcons.buttonSavedIcon,
                              number: "1.4 K",
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
