


import 'dart:io';

import 'package:flutter_codigo3_ecommerce/models/product_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBManager {
  static Database? _database;
  static final DBManager db = DBManager._();
  DBManager._();

  Future<Database?> get database async{
    if(_database != null) return _database;
    _database = await initDB();
    return _database;
  }


  initDB() async{
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentDirectory.path, 'ecommerce.db');
    return await openDatabase(
      path,
      version: 1,
      onOpen: (db){},
      onCreate: (Database db, int version) async{
        await db.execute("CREATE TABLE Product(id INTEGER, brand TEXT, name TEXT, price REAL, quantity INTEGER, image TEXT");
      }
    );
  }

  Future<int> insertProduct(ProductModel productModel) async{
    final db = await database;
    // int res = await db!.insert("Product", productModel.toJson());
    int res = await db!.rawInsert(
        "INSERT INTO Product(id, brand, name, price, quantity, image) VALUES (${productModel.id}, '${productModel.brand}', ${productModel.name}, ${productModel.price}, ${productModel.quantity}, '${productModel.image}')");
    print(res);
    return res;
  }

  Future<List<ProductModel>> getAllProducts() async{
    final db = await database;
    List<Map<String, dynamic>> res = await db!.query("Product");
    List<ProductModel> listProductModel = res.isNotEmpty ? res.map((e) => ProductModel.fromJson(e)).toList() : [];
    return listProductModel;
  }

}