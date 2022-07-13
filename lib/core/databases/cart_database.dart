import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../models/cart_item_model.dart';

class CartDataBaseManager {
  static const _dbName = "CartDataBase.db";
  static Database? _db;

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDatabase();
    return _db!;
  }

  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _dbName);
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(
    Database db,
    int version,
  ) async {
    await db.execute(
      'CREATE TABLE CART (id INTEGER PRIMARY KEY, chefId INTEGER NOT NULL,chefName TEXT NOT NULL,mealName TEXT NOT NULL, mealImage TEXT NOT NULL, mealQuantity INTEGER NOT NULL,deliveryCost INTEGER NOT NULL,mealCost INTEGER NOT NULL, maxMealsPerDay INTEGER NOT NULL, maxChefMealsPerDay INTEGER NOT NULL,deliveryStartsAt TEXT NOT NULL,notes TEXT NOT NULL)',
    );
  }

  Future<void> addToCart(CartItemModel cartItem) async {
    var dbClient = await database;

    await dbClient.insert(
      'CART',
      cartItem.toJson(instance: cartItem),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<CartItemModel>> getCart() async {
    var dbClient = await database;
    final List<CartItemModel> cartItems = [];
    await dbClient.query(
      "CART",
      columns: [
        'id',
        'chefId',
        'mealName',
        'chefName',
        'mealImage',
        'mealQuantity',
        'deliveryCost',
        'mealCost',
        'maxMealsPerDay',
        'maxChefMealsPerDay',
        'deliveryStartsAt',
        'notes',
      ],
    ).then((data) {
      for (var cartItem in data) {
        cartItems.add(CartItemModel.fromJson(cartItem));
      }
    });
    return cartItems;
  }

  Future<void> removeCartItem(int id) async {
    var dbClient = await database;
    dbClient.delete("CART", where: "id = $id");
  }

  Future<int> getMealQuantity(int mealId) async {
    var dbClient = await database;
    var queryResult = await dbClient.rawQuery(
      'SELECT * FROM CART WHERE id=$mealId',
    );
    if (queryResult.isEmpty) {
      return 0;
    }
    print('************************\n');
    print(queryResult);
    print('\n************************');
    return 0;
  }

  Future<int> getAllMealsQuantity(int mealId) async {
    int mealsQuantity = 0;
    var dbClient = await database;
    var queryResult = await dbClient.rawQuery(
      'SELECT * FROM CART WHERE id=$mealId',
    );
    if (queryResult.isEmpty) {
      return 0;
    }
    print('************************\n');
    print(queryResult);
    print('\n************************');
    for (var cartItem in queryResult) {
      mealsQuantity += cartItem["mealsQuantity"] as int;
    }
    return mealsQuantity;
  }
}
