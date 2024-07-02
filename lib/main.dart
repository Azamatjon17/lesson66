import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/card_controller.dart';
import 'package:flutter_application_1/service/product_firebases.dart';
import 'package:flutter_application_1/views/screens/firspage.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CardController()),
          ChangeNotifierProvider(create: (_) => ProductFirebases()),
        ],
        builder: (context, child) {
          return MaterialApp(
            home: Firspage(),
          );
        });
  }
}
