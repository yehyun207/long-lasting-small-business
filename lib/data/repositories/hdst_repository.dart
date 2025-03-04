import 'dart:convert';

import 'package:http/http.dart';
import 'package:module_b_103/data/models/hdst_model.dart';

import '../models/induty_model.dart';

class HdstRepository {

  final client = Client();

  Future<List<HdstModel>> getRandomFiveHdst() async{
    final response = await client.get(Uri.parse('http://172.28.2.84:8081/api/home'));

    final json = jsonDecode(response.body);

    final hdstJsonList = json['data1']['hdstList'];

    final List<HdstModel>hdstList = [];

    for(var hdstJson in hdstJsonList) {
      hdstList.add(HdstModel.fromJson(hdstJson));
    }

    return hdstList;
  }

  Future<List<IndutyModel>> getInduty() async {
    final response = await client.get(Uri.parse('http://172.28.2.84:8081/api/hdst-induty'));
    final jsonData = jsonDecode(response.body);
    final indutyJsonList = jsonData['data1']['indutyList'] as List;
    print('API에서 받은 데이터 수: ${indutyJsonList.length}');

    final List<IndutyModel> indutyList = [];
    for (var indutyJson in indutyJsonList) {
      indutyList.add(IndutyModel.fromJson(indutyJson));
    }
    print('파싱된 indutyList 길이: ${indutyList.length}');
    return indutyList;
  }


}