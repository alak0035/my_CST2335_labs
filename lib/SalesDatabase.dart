import 'package:floor/floor.dart';
import 'dart:async';
import 'SalesRecord.dart';
import 'SalesRecordDAO.dart';
import 'package:sqflite/sqflite.dart' as sqflite;


part 'SalesDatabase.g.dart';

@Database(version: 1, entities: [SalesRecord])
abstract class SalesDatabase extends FloorDatabase{
  SalesRecordDAO get getDAO;
}