import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app/app/chat/view/widgets/message_details_background.dart';
import 'package:social_app/app/chat/view/widgets/profile_Image.dart';
import 'package:social_app/app/controller/view/widgets/custom_button.dart';
import 'package:social_app/core/extension/media_query.dart';
import 'package:social_app/core/extension/routing_extenstion.dart';
import 'package:social_app/core/extension/sized_box.dart';
import 'package:social_app/core/themes/app_color.dart';
import 'package:social_app/core/utils/icons.dart';

class MessageDetiles extends StatelessWidget {
  final String message;
  MessageDetiles({super.key, required this.message});
  final List<String> messages = [
    'we r goin to c the lions',
    'they are doing a feed thing event at the zoo..',
    'when?',
    'see the lions or sea lions? also, is mac there with u??',
  ];
  @override
  Widget build(BuildContext context) {
    return MessageDetailsBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: SvgPicture.asset(
              AppIcons.buttonBackIcon,
              // ignore: deprecated_member_use
              color: AppColors.softDark,
            ),
            onPressed: () => context.pop(),
          ),
        ),
        body: Column(
          children: [
            (context.height / 10).ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ProfileImage(),
                (context.height / 40).pw,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "User Name",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      "Online",
                      style: TextStyle(
                        color: AppColors.grey,
                      ),
                    )
                  ],
                )
              ],
            ),
            (context.height / 6).ph,
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                padding: EdgeInsets.zero,
                itemBuilder: (BuildContext context, int index) {
                  final message = messages[index];
                  return Row(
                    // according to index, put message to left or right:
                    mainAxisAlignment: index.isEven ? MainAxisAlignment.start : MainAxisAlignment.end,
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: context.width * 0.80),
                        margin: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 15,
                              offset: const Offset(0, 4),
                              color: AppColors.lightGrey,
                            )
                          ],
                          color: AppColors.softWhite,
                          borderRadius: BorderRadius.only(
                            bottomLeft: const Radius.circular(20.0),
                            bottomRight: const Radius.circular(20.0),
                            topLeft: index.isEven ? Radius.zero : const Radius.circular(20.0),
                            topRight: index.isOdd ? Radius.zero : const Radius.circular(20.0),
                          ),
                        ),
                        child: Text(message),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: context.height / 10,
              margin: const EdgeInsets.only(
                left: 40.0,
                right: 40.0,
                top: 8.0,
                bottom: 50.0,
              ),
              padding: const EdgeInsets.only(
                left: 32.0,
                right: 16.0,
              ),
              decoration: BoxDecoration(
                  color: AppColors.softWhite,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15,
                      offset: const Offset(0, 4),
                      color: AppColors.lightGrey,
                    )
                  ],
                  borderRadius: BorderRadius.circular(
                    40,
                  )),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Write a message...',
                        hintStyle: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                  ),
                  CustomButton(
                    isRotated: false,
                    child: SvgPicture.asset(AppIcons.sendIcon),
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
