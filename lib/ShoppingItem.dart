import 'package:floor/floor.dart';

@entity
class ShoppingItem{
    ShoppingItem(this.id, this.name, this.amnt){
        if(this.id >= ID)
            ID = this.id+1;
    }

    static int ID = 1;

    @primaryKey
    final int id;

    String name;
    String amnt;



}