import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_codigo3_ecommerce/api/api_service.dart';
import 'package:flutter_codigo3_ecommerce/models/product_model.dart';
import 'package:flutter_codigo3_ecommerce/page/product_detail.dart';
import 'package:http/http.dart' as http;

class ProductListPage extends StatefulWidget {
  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  List <ProductModel>listProduct = [];
  APIService apiService = new APIService();

  @override
  initState() {
    super.initState();
    getData();
  }
  getData(){
    apiService.getProducts().then((value){
      listProduct = value;
      setState(() {

      });
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
        title: Text(
          "Lista de Productos",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.85,
        // crossAxisSpacing: 10,
        children: listProduct
            .map<Widget>(
              (e) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailpPge(sneaker: e),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 160.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.transparent,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              e.image,
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 10.0,
                              top: 10.0,
                              child: Icon(
                                Icons.more_vert,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    e.name.toString().toUpperCase(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff121212),
                                        fontSize: 13.0,
                                        height: 1.2),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    "S/ ${e.price}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xff121212)),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                ],
                              ),
                            ),
                            Icon(Icons.favorite_border)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
