import 'package:flutter/material.dart';
import 'package:Bobby_Ryan_Hartono/constant/app_asset.dart';

class CareerJourneySection extends StatelessWidget {
  const CareerJourneySection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.of(context).size.width;

    final companies = [
      {
        "name": "PT. Sarana Mobile Sentosa",
        "subtitle": "Building Indonesia Society 5.0",
        "asset": AppAssets.mobilecomIcon,
      },
      {
        "name": "PT. Sinarmas Multifinance",
        "subtitle": "Multifinance sinarmas",
        "asset": AppAssets.sinarmasIcon,
      },
    ];

    final techStack = [
      {"name": "Java", "asset": AppAssets.javaIcon},
      {"name": "Dart", "asset": AppAssets.dartIcon},
      {"name": "React Native", "asset": AppAssets.reactNativeIcon},
    ];

    return Container(
      width: double.infinity,
      color: Colors.black,
      padding: EdgeInsets.symmetric(
        horizontal: screenW * 0.1,
        vertical: 64,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Career Journey',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            "The skill set that I have acquired and learnt was actually from the work experience I got.\n"
            "Below here, you may see my work experience: ",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white70,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              'Current Work Experience',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
          ),
          const SizedBox(height: 40),
          Center(
            child: Wrap(
              spacing: 24,
              runSpacing: 24,
              alignment: WrapAlignment.center,
              children: companies.map((company) {
                return Container(
                  width: screenW < 600 ? double.infinity : (screenW * 0.25),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          company["asset"]!,
                          height: 64,
                          width: 64,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        company["name"]!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 60),
          const Center(
            child: Text(
              'Tech Stack',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Center(
            child: Wrap(
              spacing: 24,
              runSpacing: 24,
              alignment: WrapAlignment.center,
              children: techStack.map((tech) {
                return Container(
                  width: screenW < 600 ? double.infinity : (screenW * 0.25),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Image.asset(
                            tech["asset"]!,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        tech["name"]!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
