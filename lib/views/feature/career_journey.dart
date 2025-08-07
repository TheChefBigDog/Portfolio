import 'package:flutter/material.dart';

class CareerJourneySection extends StatelessWidget {
  const CareerJourneySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenH = MediaQuery.of(context).size.height;
    final screenW = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      height: screenH,
      color: Colors.black,
      padding: EdgeInsets.symmetric(
        horizontal: screenW * 0.1,
        vertical: 64,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Career Journey',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
          SizedBox(height: 24),
          Text(
            "My name is Bobby Ryan Hartono. I was a Java Android Developer at a corporate company called "
            "MobileCom for two years. During my time in the startup, I developed several Native Android applications "
            "for well-known companies such as Sqolaria, Qampus, Human Cloudz Indonesia, and IGI Online.\n\n"
            "I later joined Sinarmas Multifinance in search of new knowledge and a wider professional network. "
            "Throughout my career journey, I have expanded my skills to include React Native, Dart, and Java.",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white70,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
