import 'package:floor/floor.dart';
import 'dart:async';
import 'ShoppingItemDAO.dart';
import 'ShoppingItem.dart';
import 'package:sqflite/sqflite.dart' as sqflite;


part 'ListDatabase.g.dart';

@Database(version: 1, entities: [ShoppingItem])
abstract class ListDatabase extends FloorDatabase{
  ShoppingItemDAO get getDAO;
}