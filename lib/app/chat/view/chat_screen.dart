import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app/app/chat/view/widgets/chat_background.dart';
import 'package:social_app/app/chat/view/widgets/message_item.dart';
import 'package:social_app/core/extension/media_query.dart';
import 'package:social_app/core/extension/sized_box.dart';
import 'package:social_app/core/themes/app_color.dart';
import 'package:social_app/core/utils/icons.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChatBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  AppIcons.menuIcon,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Messages",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  (context.height / 16).ph,
                  //* search field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: AppColors.softWhite,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 15,
                              offset: const Offset(0, 4),
                              color: AppColors.lightGrey,
                            )
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search for contact",
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: SvgPicture.asset(
                                AppIcons.searchIcon,
                              ),
                            ),
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
                  ),
                  (context.height / 16).ph,
                  //* messages
                  ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: const [
                      MessageItem(
                        name: "User one",
                        message: "Hello",
                        time: "12:00 AM",
                      ),
                      MessageItem(
                        name: "User two",
                        message: "Hi there !",
                        time: "3:00 PM",
                      ),
                      MessageItem(
                        name: "User three",
                        message: "How are you ?",
                        time: "4:00 PM",
                      ),
                      MessageItem(
                        name: "User Four",
                        message: "Are you ok !?",
                        time: "6:00 PM",
                      ),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
