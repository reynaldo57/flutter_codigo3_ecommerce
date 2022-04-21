

import 'dart:convert';

import 'package:flutter_codigo3_ecommerce/utils/constants.dart';
import 'package:http/http.dart' as http;

class APIService{
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

  Future<List>getBrands() async {
    List listBrand = [];
    String _path = "$pathApi/brand/";
    Uri _uri = Uri.parse(_path);
    http.Response response = await http.get(_uri);
    if(response.statusCode == 200){
      listBrand = json.decode(response.body);
      return listBrand;
    }
    return listBrand;
  }
  Future<List> getProducts() async {
    List listProduct = [];
    String _path = "$pathApi/product/";
    Uri _uri = Uri.parse(_path);
    http.Response response = await http.get(_uri);
    if (response.statusCode == 200) {
      listProduct = json.decode(response.body);
      return listProduct;
    }
    return listProduct;
  }

}