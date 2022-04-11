import 'package:flutter/material.dart';
import 'package:flutter_codigo3_ecommerce/page/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
        fontFamily: 'SourceSansPro-Regular'
      ),
      home: HomePage(),
    );
  }
}


