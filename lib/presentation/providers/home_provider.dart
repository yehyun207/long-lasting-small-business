import 'package:flutter/cupertino.dart';
import 'package:module_b_103/data/repositories/hdst_repository.dart';

import '../../data/models/hdst_model.dart';
import '../../data/models/induty_model.dart';

final HomeProvider homeProvider = HomeProvider();

class HomeProvider extends ChangeNotifier {

  final hdstRepository = HdstRepository();

  final List<HdstModel>randomFiveHdst = [];

  final List<IndutyModel>induty = [];

  void loadRandomFiveHdst() async {
    randomFiveHdst.addAll(await hdstRepository.getRandomFiveHdst());
    notifyListeners();
  }

  void loadInduty() async {
   induty.addAll(await hdstRepository.getInduty());
   notifyListeners();
  }

}