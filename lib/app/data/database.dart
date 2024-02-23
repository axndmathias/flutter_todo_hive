import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List todoList = [];

  // reference our box
  final _myBox = Hive.box('myBox');

  // run this method if this the last time ever opening this app
  void createInitialData() {
    todoList = [
      ["Task 1", false],
      ["Task 2", false],
    ];
  }

  // load the data from database
  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", todoList);
  }
}
