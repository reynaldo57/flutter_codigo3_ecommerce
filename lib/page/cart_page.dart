import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
        title: Text(
          "Mi Carrito",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 6.0, vertical: 7.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.07),
                          blurRadius: 10,
                          offset: Offset(0,4),
                        )
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(right: 6.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "http://192.168.18.6:8000/media/banners/banner_1.jpg"),
                            )),
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Adidas",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            Text(
                              "Zapatillas SuperCourt SuperCourt SuperCourt",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.bold,),
                            ),
                            Text(
                              "S/ 299",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Remover",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Text(
                              "Cant. ",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            "S/ 500",
                            style: TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 6.0, vertical: 7.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.07),
                          blurRadius: 10,
                          offset: Offset(0,4),
                        )
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(right: 6.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "http://192.168.18.6:8000/media/banners/banner_1.jpg"),
                            )),
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Adidas",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            Text(
                              "Zapatillas SuperCourt SuperCourt SuperCourt",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.bold,),
                            ),
                            Text(
                              "S/ 299",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Remover",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Text(
                              "Cant. ",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            "S/ 500",
                            style: TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 6.0, vertical: 7.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.07),
                          blurRadius: 10,
                          offset: Offset(0,4),
                        )
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(right: 6.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "http://192.168.18.6:8000/media/banners/banner_1.jpg"),
                            )),
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Adidas",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            Text(
                              "Zapatillas SuperCourt SuperCourt SuperCourt",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.bold,),
                            ),
                            Text(
                              "S/ 299",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Remover",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Text(
                              "Cant. ",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            "S/ 500",
                            style: TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 6.0, vertical: 7.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.07),
                          blurRadius: 10,
                          offset: Offset(0,4),
                        )
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(right: 6.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "http://192.168.18.6:8000/media/banners/banner_1.jpg"),
                            )),
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Adidas",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            Text(
                              "Zapatillas SuperCourt SuperCourt SuperCourt",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.bold,),
                            ),
                            Text(
                              "S/ 299",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Remover",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Text(
                              "Cant. ",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            "S/ 500",
                            style: TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 6.0, vertical: 7.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.07),
                          blurRadius: 10,
                          offset: Offset(0,4),
                        )
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(right: 6.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "http://192.168.18.6:8000/media/banners/banner_1.jpg"),
                            )),
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Adidas",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            Text(
                              "Zapatillas SuperCourt SuperCourt SuperCourt",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.bold,),
                            ),
                            Text(
                              "S/ 299",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Remover",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Text(
                              "Cant. ",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            "S/ 500",
                            style: TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 6.0, vertical: 7.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.07),
                          blurRadius: 10,
                          offset: Offset(0,4),
                        )
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(right: 6.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "http://192.168.18.6:8000/media/banners/banner_1.jpg"),
                            )),
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Adidas",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            Text(
                              "Zapatillas SuperCourt SuperCourt SuperCourt",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.bold,),
                            ),
                            Text(
                              "S/ 299",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Remover",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Text(
                              "Cant. ",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            "S/ 500",
                            style: TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 6.0, vertical: 7.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.07),
                          blurRadius: 10,
                          offset: Offset(0,4),
                        )
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(right: 6.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "http://192.168.18.6:8000/media/banners/banner_1.jpg"),
                            )),
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Adidas",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            Text(
                              "Zapatillas SuperCourt SuperCourt SuperCourt",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.bold,),
                            ),
                            Text(
                              "S/ 299",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Remover",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Text(
                              "Cant. ",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            "S/ 500",
                            style: TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 6.0, vertical: 7.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.07),
                          blurRadius: 10,
                          offset: Offset(0,4),
                        )
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(right: 6.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "http://192.168.18.6:8000/media/banners/banner_1.jpg"),
                            )),
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Adidas",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            Text(
                              "Zapatillas SuperCourt SuperCourt SuperCourt",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.bold,),
                            ),
                            Text(
                              "S/ 299",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Remover",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Text(
                              "Cant. ",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            "S/ 500",
                            style: TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 6.0, vertical: 7.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.07),
                          blurRadius: 10,
                          offset: Offset(0,4),
                        )
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(right: 6.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "http://192.168.18.6:8000/media/banners/banner_1.jpg"),
                            )),
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Adidas",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            Text(
                              "Zapatillas SuperCourt SuperCourt SuperCourt",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.bold,),
                            ),
                            Text(
                              "S/ 299",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Remover",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Text(
                              "Cant. ",
                              style: TextStyle(fontSize: 12.0),
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            "S/ 500",
                            style: TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70.0,
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 54.0,
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                child: ElevatedButton.icon(
                  onPressed:(){},
                  icon: Icon(Icons.payment),
                  label: Text("Total a Pagar S/ 500.00"),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff121212),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
