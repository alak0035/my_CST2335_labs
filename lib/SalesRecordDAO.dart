import 'package:floor/floor.dart';
import 'package:my_flutter_labs/SalesRecord.dart';


@dao
abstract class SalesRecordDAO{

  @Query("Select * from SalesRecord")
  Future<List<SalesRecord>> getRecords();

  @insert
  Future<void> addSalesRecord(SalesRecord record);

  @update
  Future<void> updateSalesRecord(SalesRecord record);

  @delete
  Future<void> removeSalesRecord(SalesRecord record);

}