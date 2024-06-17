import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReferAndEarnPage extends StatelessWidget {
  const ReferAndEarnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7775F8),
      appBar: AppBar(
        title: const Text(
          'Refer and Earn',
          style: TextStyle(fontFamily: 'Roboto'),
        ),
        backgroundColor: const Color(0xFF7775F8),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SvgPicture.asset(
                      'assets/refer_and_earn.svg',
                      height: 150,
                      placeholderBuilder: (context) => CircularProgressIndicator(),
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Collects rs 2000 cash Bonus and more per friend',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Container(
                      color: const Color(0xFF7775F8),
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: const Text(
                        'offer ends October 1, 2023',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    const Text(
                      'Connect to WhatsApp contact',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF7775F8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                      ),
                      onPressed: () {
                        // Handle referral sharing action
                      },
                      child: const Text(
                        'Share Referral',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
