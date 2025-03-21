import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List todoList = [];

  // reference a box
  final _myBox = Hive.box('mybox');

  // run this method if this is the first time ever opening this app
  void createInitialData() {
    todoList = [
      ["Code this todo app", false],
      ["Learn Dart and Flutter for mobile development", false],
    ];
  }

  // load the data from the database
  void loadData() {
    todoList = _myBox.get('TODOLIST');
  }

  // update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", todoList);
  }
}
