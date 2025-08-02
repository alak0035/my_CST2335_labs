import 'package:floor/floor.dart';
import 'package:my_flutter_labs/ShoppingItem.dart';

@dao
abstract class ShoppingItemDAO{
    
  @Query("Select * from ShoppingItem")
  Future<List<ShoppingItem>> getList();

  @insert
  Future<void> addShoppingItem(ShoppingItem item);

  @delete
  Future<void> removeShoppingItem(ShoppingItem item);

  @update
  Future<void> updateShoppingItem(ShoppingItem item);

}