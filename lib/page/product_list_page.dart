

import 'package:flutter/material.dart';

class ProductListPage extends StatefulWidget {

  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Producto"),
      ),
    );
  }
}
