import 'package:flutter/material.dart';
import 'package:social_app/app/favorite_posts.dart/view/widgets/favorites_background.dart';
import 'package:social_app/core/extension/media_query.dart';
import 'package:social_app/core/extension/sized_box.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FavoritesBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Favorite Posts",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              (context.height / 3).ph,
              const Center(
                child: Text(
                  "No favorite posts yet !",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
