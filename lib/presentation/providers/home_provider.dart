import 'package:flutter/cupertino.dart';

final HomeProvider homeProvider = HomeProvider();

class HomeProvider extends ChangeNotifier {

  final ScrollController scrollController = ScrollController();

  HomeProvider() {
    scrollController.addListener(() {

    });
  }

}