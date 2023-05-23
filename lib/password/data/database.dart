import 'package:hive_flutter/hive_flutter.dart';

class PasswordDataBase {
  List Password = [];

  // reference our box
  final _myBox = Hive.box('mybox');

  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    Password = [
      ["Facebook",false],
      ["Twitter", false],
    ];
  }

  // load the data from database
  void loadData() {
    Password = _myBox.get("PasswordManager");
  }

  // update the database
  void updateDataBase() {
    _myBox.put("PasswordManager", Password);
  }
}
