import 'package:Bobby_Ryan_Hartono/modules/portfolio/portfolio_controller.dart';
import 'package:Bobby_Ryan_Hartono/views/feature/blood_section.dart';
import 'package:Bobby_Ryan_Hartono/views/widget/portfolio_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenH = MediaQuery.of(context).size.height;
    final headerH = screenH * 0.12;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(headerH),
        child: const PortfolioHeader(heightFraction: 0.12),
      ),
      body: GetBuilder<PortfolioController>(
        builder: (controller) {
          return const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [SafeArea(child: BloodSection())],
            ),
          );
        },
      ),
    );
  }
}
