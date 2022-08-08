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
      'CREATE TABLE CART (id INTEGER PRIMARY KEY, chefId INTEGER NOT NULL,chefName TEXT NOT NULL,mealName TEXT NOT NULL, mealImage TEXT NOT NULL, mealQuantity INTEGER NOT NULL,deliveryCost INTEGER NOT NULL,mealCost INTEGER NOT NULL, maxMealsPerDay INTEGER NOT NULL, maxChefMealsPerDay INTEGER NOT NULL,deliveryStartsAt TEXT NOT NULL,deliveryEndsAt TEXT NOT NULL,notes TEXT NOT NULL)',
    );
  }

  Future<void> addToCart(CartItemModel cartItem) async {
    var dbClient = await database;

    final currentItem = await dbClient.rawQuery(
      'SELECT id,mealQuantity FROM CART WHERE id=${cartItem.id}',
    );
    if (currentItem.isEmpty) {
      await dbClient.insert(
        'CART',
        cartItem.toJson(instance: cartItem),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    } else {
      final int currentItemQuantity =
          currentItem.elementAt(0)['mealQuantity'] as int;
      dbClient.rawUpdate(
        'UPDATE CART SET mealQuantity = ? WHERE id = ?',
        [currentItemQuantity + cartItem.mealQuantity, cartItem.id],
      );
    }
  }

  Future<List<CartItemModel>> getCart() async {
    var dbClient = await database;
    final List<CartItemModel> cartItems = [];
    await dbClient
        .rawQuery(
      "SELECT * FROM CART",
    )
        .then((data) {
      for (var cartItem in data) {
        cartItems.add(CartItemModel.fromJson(cartItem));
      }
    });
    return cartItems;
  }

  Future<void> removeCartItem(int id) async {
    var dbClient = await database;
    await dbClient.delete("CART", where: "id = $id");
  }

  Future<void> removeCart() async {
    var dbClient = await database;
    await dbClient.execute("DELETE FROM CART");
  }

  Future<void> updateCartItemQuantity({
    required int id,
    required int quantity,
  }) async {
    var dbClient = await database;
    dbClient.rawUpdate(
      'UPDATE CART SET mealQuantity = ? WHERE id = ?',
      [quantity, id],
    );
  }

  Future<int> getAllMealsQuantity() async {
    int mealsQuantity = 0;
    var dbClient = await database;
    var queryResult = await dbClient.rawQuery(
      'SELECT mealQuantity FROM CART',
    );
    // if cart is empty
    if (queryResult.isEmpty) return 0;
    // else count all meals quantity to check ability of adding new meal
    // (to add new meal or increase quantity of meal we should check max meals for chef)
    for (var cartItem in queryResult) {
      mealsQuantity += cartItem["mealQuantity"] as int;
    }
    return mealsQuantity;
  }

  Future<bool> checkAddToCartAvailability({
    required int chefId,
  }) async {
    var dbClient = await database;
    final records = await dbClient.rawQuery('SELECT chefId FROM CART');
    // if cart is empty so we can add any meal to it
    if (records.isEmpty) return true;
    // if cart contain a meal from the same chef
    if (records.elementAt(0)['chefId'] == chefId) return true;
    // if cart contain a meal from another chef (chefId = this.meal.chefId)
    return false;
  }

  Future<int> getCartMealQuantity({
    required int mealId,
  }) async {
    var dbClient = await database;
    final mealQuantity = await dbClient.rawQuery(
      'SELECT mealQuantity FROM CART WHERE id=$mealId',
    );
    // if meal dose not exist
    if (mealQuantity.isEmpty) return 0;
    // if meal exist return it's quantity
    return mealQuantity[0]['mealQuantity'] as int;
  }
}
