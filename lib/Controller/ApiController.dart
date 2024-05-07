import 'dart:convert';

import 'package:http/http.dart';

Future getAllProducts() async {
  try {
    const url = 'https://fakestoreapi.com/products';
    var response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      print(response.body);
      final body = jsonDecode(response.body);
      if (body[0].isNotEmpty) {
        return body;
      }
    }
  } catch (error,stackTrace) {
    print('Error: $error');
    print('Stack trace:\n$stackTrace');
  }
}

