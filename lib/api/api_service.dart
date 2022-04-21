

import 'dart:convert';

import 'package:flutter_codigo3_ecommerce/utils/constants.dart';
import 'package:http/http.dart' as http;

class APIservice{
  Future<List> getBanners() async{
    List listBanner = [];
    String _path = "$pathApi/banner/";
    Uri _uri = Uri.parse(_path);
    http.Response response = await http.get(_uri);
    if(response.statusCode == 200){
      listBanner = json.decode(response.body);
      return listBanner;
    }
    return listBanner;
  }
}