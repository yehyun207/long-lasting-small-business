import 'dart:convert';
import 'package:http/http.dart';
import 'package:module_b_103/data/models/hdst_model.dart';
import '../models/induty_model.dart';

class HdstRepository {

  final String ip = '172.20.10.9';

  final client = Client();

  Future<List<HdstModel>> getRandomFiveHdst() async{
    final response = await client.get(Uri.parse('http://$ip:8081/api/home'));

    final json = jsonDecode(response.body);

    final hdstJsonList = json['data1']['hdstList'];

    final List<HdstModel>hdstList = [];

    for(var hdstJson in hdstJsonList) {
      hdstList.add(HdstModel.fromJson(hdstJson));
    }

    return hdstList;
  }

  Future<List<IndutyModel>> getInduty() async {
    final response = await client.get(Uri.parse('http://$ip:8081/api/hdst-induty'));
    final jsonData = jsonDecode(response.body);
    final indutyJsonList = jsonData['data1']['indutyList'] as List;

    final List<IndutyModel> indutyList = [];
    for (var indutyJson in indutyJsonList) {
      indutyList.add(IndutyModel.fromJson(indutyJson));
    }
    return indutyList;
  }


}