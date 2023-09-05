import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  Future<Map<String, dynamic>> post({
    required String url,
    required Map<String, dynamic> body,
  }) async {
    try {
      Uri uri = Uri.parse(url);
      http.Response response = await http.post(
        uri,
        body: body,
      );
      var data = jsonDecode(response.body);
      return data;
    } catch (e) {
      return {};
    }
  }
}
