import 'dart:convert';
import 'package:flutter/services.dart';
import 'model_class_api.dart';
import 'package:http/http.dart'as http;

class ApiServer {
  // static Future<List<Assignment>> fetchLessons() async {
  //     final String response = await rootBundle.loadString('assets/assignment.json');
  //     if (response != null) {
  //       List<dynamic> jsonResponse = jsonDecode(response);
  //       return jsonResponse.map((json) => Assignment.fromJson(json)).toList();
  //     } else {
  //       throw Exception('Failed to load lessons');
  //     }
  // }
  static Future<List<Assignment>> fetchLessons()async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    if(response.statusCode == 200 ){
      List<dynamic> jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((json) => Assignment.fromJson(json)).toList();
    }else{
      throw Exception('Failed to load lessons');
    }
  }
}
