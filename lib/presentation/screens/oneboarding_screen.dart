import 'package:flutter/material.dart';
import 'package:module_b_103/presentation/providers/oneboarding_provider.dart';
import 'package:video_player/video_player.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 250),
          Image.asset(
            'assets/images/LLSB_BI.png',
            width: MediaQuery.sizeOf(context).width * 0.3,
          ),
          Spacer(),
          AspectRatio(
            aspectRatio: oneBoardingProvider.videoController.value.aspectRatio,
            child: Stack(
              children: [
                VideoPlayer(oneBoardingProvider.videoController),
                VideoProgressIndicator(
                  oneBoardingProvider.videoController,
                  allowScrubbing: true,
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
