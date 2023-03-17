import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/item.dart';

class ItemList with ChangeNotifier {

  final String _urlBase = 'https://aula-project-7890e-default-rtdb.firebaseio.com';

  List<Item> _items = [];

  List<Item> get items => _items;

  Future<void> getItems() async {

    try {
    final request = await http.get(Uri.parse('$_urlBase/items.json'));
    final response = jsonDecode(request.body);

      List<Item> newItems = [];

      print(response);


      if(response != null){
        for(final key in response.keys) {
          newItems.add(Item.fromJson(response[key], key));
        }
      }
      print(newItems.length);
      _items = newItems;
      notifyListeners();

    } catch(_){
      print(_.toString());
    }
  }
}