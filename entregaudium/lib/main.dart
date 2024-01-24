import 'package:entregaudium/config/routes/app_pages.dart';
import 'package:entregaudium/config/routes/routes.dart';
import 'package:entregaudium/core/inject/inject.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  await initInject();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Entregaudium',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: Routes.home,
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.routes,
    );
  }
}
