import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/modules/portfolio/portfolio_controller.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<PortfolioController>(
        init: PortfolioController(), // Initialize controller if not injected
        builder: (controller) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                // Profile Image
                CircleAvatar(
                  radius: 80,
                  backgroundImage:
                      const AssetImage("assets/images/ic_profile_page.jpg"),
                ),
                const SizedBox(height: 20),

                // Name
                Text(
                  controller.name.value,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),

                // Title
                Text(
                  controller.title.value,
                  style: const TextStyle(fontSize: 18, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),

                // About Section
                Text(
                  controller.about.value,
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),

                // Contact Info
                Card(
                  child: ListTile(
                    leading: const Icon(Icons.email),
                    title: Text(controller.email.value),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: const Icon(Icons.phone),
                    title: Text(controller.phone.value),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: const Icon(Icons.link),
                    title: Text(controller.linkedin.value),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          );
        },
      ),
    );
  }
}
