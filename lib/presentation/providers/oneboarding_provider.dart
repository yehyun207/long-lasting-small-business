import 'package:flutter/material.dart';
import 'package:module_b_103/presentation/screens/main_screen.dart';
import 'package:module_b_103/presentation/screens/settings_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_player/video_player.dart';
import '../screens/home_content.dart';


final oneBoardingProvider = OneBoardingProvider();

class OneBoardingProvider extends ChangeNotifier {


  final videoController = VideoPlayerController.networkUrl(
    Uri.parse('http://172.20.10.9:8081/video/streaming/100.mp4'),
  );

  void initVideoController(BuildContext context) async {
    await videoController.initialize();
    videoController.play();
    videoController.addListener(() {
      if (videoController.value.isCompleted) {
        navigateToHomeScreen(context);
      }
    });
    notifyListeners();
  }

  void toggleVideoPlay() {
    if (videoController.value.isPlaying) {
      videoController.pause();
    } else {
      videoController.play();
    }
    notifyListeners();
  }

  void navigateToHomeScreen(BuildContext context) async {
    final sharedPref = await SharedPreferences.getInstance();
    await sharedPref.setBool('skipOneBoarding', true);
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (context) => MainScreen()));
  }
}
