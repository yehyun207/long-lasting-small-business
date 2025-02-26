import 'dart:convert';

import 'package:http/http.dart';
import 'package:module_b_103/data/models/hdst_model.dart';

class HdstRepository {

  final client = Client();

  Future<List<HdstModel>> getRandomFiveHdst() async{
    final response = await client.get(Uri.parse('http://192.168.0.18:8081/api/home'));

    final json = jsonDecode(response.body);

    final hdstJsonList = json['data1']['hdstList'];

    final List<HdstModel>hdstList = [];

    for(var hdstJson in hdstJsonList) {
      hdstList.add(HdstModel.fromJson(hdstJson));
    }

    return hdstList;
  }

}