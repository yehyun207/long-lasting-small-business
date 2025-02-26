import 'package:flutter/material.dart';
import 'package:module_b_103/presentation/providers/oneboarding_provider.dart';
import 'package:video_player/video_player.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  void updateScreen() => setState(() {});

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      oneBoardingProvider.addListener(updateScreen);
      oneBoardingProvider.initVideoController(context);
    });
  }

  @override
  void dispose() {
    super.dispose();
    oneBoardingProvider.removeListener(updateScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Image.asset(
            'assets/images/LLSB_BI.png',
            width: MediaQuery.sizeOf(context).width * 0.3,
          ),
          Spacer(),
          AspectRatio(
            aspectRatio: oneBoardingProvider.videoController.value.aspectRatio,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                VideoPlayer(oneBoardingProvider.videoController),
                VideoProgressIndicator(
                  oneBoardingProvider.videoController,
                  allowScrubbing: true,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      oneBoardingProvider.toggleVideoPlay();
                    },
                    child: Icon(
                      oneBoardingProvider.videoController.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow_outlined,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: GestureDetector(
              onTap: () {
                oneBoardingProvider.navigateToHomeScreen(context);
              },
              child: Container(
                height: 46,
                width: double.infinity,
                alignment: Alignment.center,
                color: Colors.blue,
                child: Text(
                  '홈으로',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
