import 'package:flutter/material.dart';

class CareerJourneySection extends StatelessWidget {
  const CareerJourneySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.of(context).size.width;

    final companies = [
      {
        "name": "PT. Sarana Mobile Sentosa",
        "subtitle": "Building Indonesia Society 5.0",
        "asset": "assets/images/ic_mobilecom.jpg",
      },
      {
        "name": "PT. Sinarmas Multifinance",
        "subtitle": "Sinarmas Multifinance ",
        "asset": "assets/images/ic_sinarmas.png",
      },
    ];

    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
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
          const SizedBox(height: 24),
          const Text(
            "Welcome to my humble Web Page, I am Bobby Ryan. Hello.\n"
            "This is just a hobby of mine, creating something and explore everything.\n"
            "You may check around and test anything from this web page, I dont mind.\n\n"
            "The skill set that I have acquired and learnt was actually from the work experience I got.\n"
            "Below here, you may see my work experience: ",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white70,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 40),
          const Center(
            child: Text(
              "Current Work Experience",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
              textAlign: TextAlign.center,
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
        ],
      ),
    );
  }
}
