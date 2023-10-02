import 'package:bilibili_comics/app/config/router/my_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Clean Artcitecture',
      routerConfig: MyRouter.router(),
    );
  }
}
