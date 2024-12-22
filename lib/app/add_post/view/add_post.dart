import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app/app/add_post/view/widgets/add_page_background.dart';
import 'package:social_app/app/controller/view/widgets/custom_button.dart';
import 'package:social_app/core/extension/media_query.dart';
import 'package:social_app/core/extension/routing_extenstion.dart';
import 'package:social_app/core/extension/sized_box.dart';
import 'package:social_app/core/themes/app_color.dart';
import 'package:social_app/core/utils/icons.dart';

class AddPost extends StatelessWidget {
  const AddPost({super.key});

  @override
  Widget build(BuildContext context) {
    return AddPageBackground(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Add Post",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                (context.height / 8).ph,
                //* upload image
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: context.height / 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 15,
                        offset: const Offset(0, 4),
                        color: AppColors.lightGrey,
                      )
                    ],
                    color: AppColors.grey,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppIcons.buttonPhotosIcon),
                      const Text("Upload image"),
                    ],
                  ),
                ),
                (context.height / 20).ph,
                //* text field
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 15,
                        offset: const Offset(0, 4),
                        color: AppColors.lightGrey,
                      )
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "add text ....",
                        fillColor: AppColors.softWhite,
                        filled: true,
                        isDense: true,
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 0.0,
                            style: BorderStyle.none,
                          ),
                          borderRadius: BorderRadius.circular(
                            25,
                          ),
                        )),
                  ),
                ),
                //* save post button
                (context.height / 20).ph,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      isRotated: false,
                      child: SvgPicture.asset(AppIcons.plusIcon),
                      onTap: () => context.pop(),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
