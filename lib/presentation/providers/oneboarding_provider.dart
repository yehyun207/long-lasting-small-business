import 'package:video_player/video_player.dart';

final oneBoardingProvider = OneBoardingProvider();

class OneBoardingProvider {

  final videoController = VideoPlayerController.networkUrl(Uri.parse(''));


}