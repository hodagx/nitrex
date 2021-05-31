import 'package:http/http.dart' as http;
// import 'dart:convert';

Future loginUser(String email, String password) async {
  // String url = 'https://nitrex.online/api/v1/accounts/me/';
  final response = await http.post(
      Uri.parse("https://nitrex.online/api/v1/accounts/login/"),
      headers: {},
      body: {'email': email, 'password': password});
  // var convertedDatatoJason = jsonDecode(response.body);
  return response.body;
}
