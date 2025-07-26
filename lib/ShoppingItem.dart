import 'package:floor/floor.dart';

@entity
class ShoppingItem{
    ShoppingItem(this.id, this.name, this.amnt);

    static int ID = 1;

    @primaryKey
    final int id;

    String name;
    int amnt;



}