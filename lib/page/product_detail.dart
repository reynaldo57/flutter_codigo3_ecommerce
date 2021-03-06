import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo3_ecommerce/db/db_manager.dart';
import 'package:flutter_codigo3_ecommerce/models/product_model.dart';
import 'package:flutter_codigo3_ecommerce/page/cart_page.dart';

class ProductDetailpPge extends StatefulWidget {
  ProductModel sneaker;
  ProductDetailpPge({required this.sneaker});
  @override
  _ProductDetailpPgeState createState() => _ProductDetailpPgeState();
}

class _ProductDetailpPgeState extends State<ProductDetailpPge> {
  int _quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 300.0,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12.withOpacity(0.07),
                            offset: Offset(0, 4),
                            blurRadius: 10.0),
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          40.0,
                        ),
                        bottomRight: Radius.circular(
                          40.0,
                        ),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.sneaker.image),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          widget.sneaker.brand.toString().toUpperCase(),
                          style:
                              TextStyle(color: Colors.black54, fontSize: 14.0),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          "${widget.sneaker.name.toString().toUpperCase()}",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16.0,
                              fontFamily: "SourceSansPro-Regular"),
                        ),
                      ),
                      Icon(
                        CupertinoIcons.checkmark_seal_fill,
                        color: Colors.black54,
                        size: 20.0,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          "S/ ${widget.sneaker.price.toString()}",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: _quantity == 0
                                  ? () {}
                                  : () {
                                      _quantity--;
                                      setState(() {});
                                    },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: _quantity == 0
                                      ? Colors.black38
                                      : Color(0xff121212),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: Icon(
                                  CupertinoIcons.minus,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                _quantity.toString(),
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _quantity++;
                                setState(() {});
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xff121212),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: Icon(
                                  CupertinoIcons.plus,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Descripcion General",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 14.0),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 16.0, right: 16.0),
                          child: Text(
                            widget.sneaker.description,
                            style: TextStyle(
                                color: Colors.black54, fontSize: 15.0),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 80.0,
                  )
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
                    onPressed: _quantity != 0
                        ? () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => CartPage(),
                            //   ),
                            // );
                            ProductModel product = new ProductModel(
                                id: 1,
                                brand: "adidas",
                                category: "zapatillas",
                                name: "supercourt",
                                description: "asd",
                                price: 12.99,
                                stock: 10,
                                image: "asd",
                                activated: true,
                                quantity: 10,
                            );
                            DBManager.db.insertProduct(product);
                          }
                        : () {},
                    icon: Icon(Icons.add_shopping_cart_rounded),
                    label: Text("Agregar al Carrito"),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff121212),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                    ),
                  ),
                ))
          ],
        ));
  }
}
