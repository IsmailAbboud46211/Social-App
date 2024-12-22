import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app/app/profile/view/widgets/custom_clipper.dart';
import 'package:social_app/app/profile/view/widgets/profile_background.dart';
import 'package:social_app/app/profile/view/widgets/state.dart';
import 'package:social_app/core/extension/media_query.dart';
import 'package:social_app/core/extension/sized_box.dart';
import 'package:social_app/core/themes/app_color.dart';
import 'package:social_app/core/utils/icons.dart';
import 'dart:math';

import 'package:social_app/core/utils/images.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  _changeTab(String tab) {}

  @override
  Widget build(BuildContext context) {
    return ProfileBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    //* border
                    Transform.rotate(
                      angle: pi / 4,
                      child: Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              width: 2,
                              color: AppColors.softDark,
                            )),
                      ),
                    ),
                    //* image
                    ClipPath(
                      clipper: ProfileImageClipper(),
                      child: Image.asset(
                        Images.profileImage,
                        width: 180.0,
                        height: 180.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                //* user name
                const Text(
                  "Ismail",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Text(
                  "@Ismail",
                  style: TextStyle(fontSize: 20),
                ),
                (context.width / 8).ph,
                //* state strings
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stat(
                        name: "Posts",
                        number: 35,
                      ),
                      Stat(
                        name: "Followers",
                        number: 330,
                      ),
                      Stat(
                        name: "Follow",
                        number: 550,
                      ),
                    ],
                  ),
                ),
                (context.width / 5).ph,
                //* buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                        onTap: _changeTab("photos"),
                        child: SvgPicture.asset(
                          AppIcons.buttonPhotosIcon,
                          // ignore: deprecated_member_use
                          //color: _selectedTab == "photos" ? AppColors.primaryColor : null,
                        )),
                    GestureDetector(
                        onTap: _changeTab("saved"),
                        child: SvgPicture.asset(
                          AppIcons.buttonSavedIcon,
                          // ignore: deprecated_member_use
                          //  color: _selectedTab == "saved" ? AppColors.primaryColor : null,
                        ))
                  ],
                ),
                //* staggered gride
                Padding(
                  padding: const EdgeInsets.all(13),
                  child: StaggeredGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 14.0,
                    crossAxisSpacing: 14.0,
                    children: [
                      StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 1.5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              Images.rec5Image,
                              fit: BoxFit.cover,
                            ),
                          )),
                      StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              Images.rec7Image,
                              fit: BoxFit.cover,
                            ),
                          )),
                      StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 1.5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              Images.rec8Image,
                              fit: BoxFit.cover,
                            ),
                          )),
                      StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              Images.rec1Image,
                              fit: BoxFit.cover,
                            ),
                          ))
                    ],
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
