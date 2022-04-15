

import 'package:flutter/material.dart';

class ProductListPage extends StatefulWidget {

  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black87),
          title: Text(
            "Lista de PRODUCTOS",
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
        crossAxisSpacing: 10,
        children: [
          Container(
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
                            "http://192.168.18.6:8000/media/banners/banner_4.jpg"
                        )
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
                              "zapatillas curt",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff121212)
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "S/ 299.00",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xff121212)
                              ),
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

        ],
      ),
    );
  }
}
