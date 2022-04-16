import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_codigo3_ecommerce/page/product_detail.dart';
import 'package:http/http.dart' as http;

class ProductListPage extends StatefulWidget {
  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  List listProduct = [];

  @override
  initState() {
    super.initState();
    getProducts();
  }

  getProducts() async {
    String _path = "http://192.168.18.6:8000/api/product/";
    Uri _uri = Uri.parse(_path);
    http.Response response = await http.get(_uri);
    if (response.statusCode == 200) {
      listProduct = json.decode(response.body);
      setState(() {});
    }
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
                  print(e);
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => ProductDetailpPge(),
                  //   ),
                  // );
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
                              e["image"],
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
                                    e["name"].toString().toUpperCase(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff121212),
                                        fontSize: 13.0,
                                        height: 1.2),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    "S/ ${e["price"]}",
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
