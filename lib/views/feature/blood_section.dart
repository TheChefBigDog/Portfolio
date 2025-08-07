import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BloodSection extends StatelessWidget {
  const BloodSection({Key? key}) : super(key: key);

  Future<void> _openWhatsApp() async {
    final uri = Uri.parse('https://wa.me/62859211150899');
    if (await canLaunchUrl(uri)) await launchUrl(uri);
  }

  @override
  Widget build(BuildContext context) {
    final screenH = MediaQuery.of(context).size.height;
    final screenW = MediaQuery.of(context).size.width;

    return SizedBox(
      width: double.infinity,
      height: screenH,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Background
          Image.asset('assets/images/bobby_AI.png', fit: BoxFit.cover),

          // Quote + button in one Positioned
          Positioned(
            top: screenH * 0.2,
            left: screenW * 0.1,
            width: screenW * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'To Force or not to Force, That is the question',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [Shadow(blurRadius: 6, color: Colors.black54)],
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  '~Bobby Ryan Hartono, 2025',
                  style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    color: Colors.white70,
                  ),
                ),

                // exactly 16px below the quote
                const SizedBox(height: 16),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 14,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 6,
                  ),
                  onPressed: _openWhatsApp,
                  child: const Text(
                    'Contact Me',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
