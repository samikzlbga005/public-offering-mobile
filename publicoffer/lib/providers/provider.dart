import 'package:flutter/material.dart';
import '../models/publicOffer.dart';
import '../services/service.dart';

class modelProvider extends ChangeNotifier {
  final _service = Services();
  List<List> offer_list = [];

  Future<void> getOffer() async {
    List<List> response = await _service.getOffer();
    offer_list = response;
  }

  List<List> listOffer() {
    return offer_list;
  }

  notifyListeners();
}
