import 'package:flutter/material.dart';
import 'package:social_app/app/chat/view/widgets/profile_Image.dart';
import 'package:social_app/core/extension/media_query.dart';
import 'package:social_app/core/extension/routing_extenstion.dart';
import 'package:social_app/core/extension/sized_box.dart';
import 'package:social_app/core/router/route_name.dart';
import 'package:social_app/core/themes/app_color.dart';

class MessageItem extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  const MessageItem({
    super.key,
    required this.name,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go(
        routeName: RoutesNames.messageDetail,
        arguments: message,
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                blurRadius: 15,
                offset: const Offset(0, 4),
                color: AppColors.lightGrey,
              )
            ],
            color: AppColors.softWhite,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileImage(),
              (context.width / 25).pw,
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(message),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(time),
              )
            ],
          ),
        ),
      ),
    );
  }
}
