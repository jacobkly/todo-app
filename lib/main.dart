import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // initialize the hive
  await Hive.initFlutter();

  // open a box
  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.yellow,
          accentColor: Colors.black,
        ),
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.black,
          selectionColor: Colors.blue[100],
          selectionHandleColor: Colors.black,
        ),
      ),
      home: HomePage(),
    );
  }
}
