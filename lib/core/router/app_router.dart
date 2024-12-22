import 'package:flutter/material.dart';
import 'package:social_app/app/add_post/view/add_post.dart';
import 'package:social_app/app/chat/view/widgets/message_detiles.dart';
import 'package:social_app/app/controller/view/controller.dart';
import 'package:social_app/app/on_bording/view/on_bording_screen.dart';
import 'package:social_app/core/router/route_name.dart';

class AppRouter {
  Route? onGeneratedRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.onBording:
        return MaterialPageRoute(
          builder: (_) => const OnBordingScreen(),
        );

      case RoutesNames.controller:
        return MaterialPageRoute(
          builder: (_) => const Controller(),
        );

      case RoutesNames.addPage:
        return MaterialPageRoute(
          builder: (_) => const AddPost(),
        );

      case RoutesNames.messageDetail:
        return MaterialPageRoute(
          builder: (_) => MessageDetiles(
            message: settings.arguments as String,
          ),
        );
    }

    return null;
  }
}
