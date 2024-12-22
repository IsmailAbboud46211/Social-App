import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:social_app/app_wrapper.dart';
import 'package:social_app/core/database/boxes_names.dart';
import 'package:social_app/core/database/hive_db.dart';
import 'package:social_app/core/database/keys_names.dart';
import 'package:social_app/core/router/app_router.dart';
import 'package:social_app/core/themes/dark_theme.dart';
import 'package:social_app/core/themes/light_theme.dart';
import 'package:social_app/logic_observer.dart';

//* global var to access to the DB from anyWhere
HiveDB hiveDB = HiveDB();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //* init the local DB
  await hiveDB.initDB();
  //* Router
  AppRouter appRouter = AppRouter();
  //* Cubit Observer
  Bloc.observer = MyBlocObserver();

  runApp(
    SocialApp(
      appRouter: appRouter,
    ),
  );
}

class SocialApp extends StatelessWidget {
  final AppRouter appRouter;
  const SocialApp({required this.appRouter, super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box(BoxesNames.settings).listenable(),
      builder: ((BuildContext context, Box box, Widget? child) {
        final isDarkMode = box.get(
          KeysNames.darkMode,
          defaultValue: false,
        );
        return MaterialApp(
          title: 'Finance App',
          debugShowCheckedModeBanner: false,
          onGenerateRoute: appRouter.onGeneratedRoutes,
          theme: isDarkMode ? DarkTheme.setDarkMode() : LightTheme.setLightMode(),
          home: const AppWrapper(),
        );
      }),
    );
  }
}
