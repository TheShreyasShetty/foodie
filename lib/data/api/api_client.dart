import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService{
  late String token;
  final String appBaseUrl;
  late Map<String, String> _mainHeaders;
  ApiClient({required this.appBaseUrl}){
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    // telling that the content api receiving from json file and the UTF-8 is decoding and encoding section
    _mainHeaders = {
      'Content-type':'application/json; charset=UTF-8',
      'Authorisation' : 'Bearer $token',
    };
  }
  // getx inside uses http client
  // here we use getx instead of http client where getx will provide the response
  // method to receive response from getx
  Future<Response> getData(String uri,) async {
    try{
      Response response = await get(uri);
      return response;
    }catch(e){
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}