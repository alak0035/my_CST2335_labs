import 'package:floor/floor.dart';


@entity
class SalesRecord{
  SalesRecord(this.recordID, this.custID, this.carID, this.dealerID, this.date){
    if(this.recordID >= ID)
      ID = this.recordID+1;
  }

  static int ID = 1;

  @primaryKey
  final int recordID;

  int custID;
  int carID;
  int dealerID;
  String date;



}