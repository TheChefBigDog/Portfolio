import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:Bobby_Ryan_Hartono/modules/portfolio/portfolio_binding.dart';
import 'package:Bobby_Ryan_Hartono/views/feature/portfolio_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      initialBinding: PortfolioBinding(),
      home: const PortfolioView(),
    );
  }
}
