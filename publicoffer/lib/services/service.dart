import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:publicoffer/models/publicOffer.dart';

class Services {
  Uri getUrl() => Uri.parse("http://10.0.2.2:8080/api");
  Future<List<List>> getOffer() async {
    http.Response response = await http.get(getUrl());
    List<List> list = [];
    List<String> offer_list = [];
    List<String> date_list = [];

    if (response.statusCode >= 200 && response.statusCode < 300) {
      var data = json.decode(response.body);

      //print(data);
      for (var i = 0; i < data.length; i++) {
        offer_list.add(data[i]["arz_name"]);
        print(offer_list);
        date_list.add(data[i]["dates"]);
      }
      list.add(offer_list);
      list.add(date_list);
      //print(list);
    }
    return list;
  }
}
