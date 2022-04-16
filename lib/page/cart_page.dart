
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(right: 0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("http://192.168.18.6:8000/media/banners/banner_1.jpg"),
                    )
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Adidas", style: TextStyle(fontSize: 12.0),),
                    Text("Zapatillas SuperCourt", style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),),
                    Text("S/ 299", style: TextStyle(fontSize: 12.0),),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text("Remover", style: TextStyle(fontSize: 12.0, decoration: TextDecoration.underline),),
                  ],
                ),
                Column(
                  children: [
                    Text("Cant. ", style: TextStyle(fontSize: 12.0),),
                    Text("2", style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),),

                  ],
                ),
                Column(
                  children: [
                    Text("Total", style: TextStyle(fontSize: 12.0),),
                    Text("2", style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),),

                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
