//@dart=2.9
//import 'dart:html';
import 'package:app_doacao/alimento.dart';
import 'package:app_doacao/cadastro.dart';
import 'package:app_doacao/contato.dart';
import 'package:app_doacao/eletro.dart';
import 'package:app_doacao/home.dart';
import 'package:app_doacao/moveis.dart';
import 'package:app_doacao/pix.dart';
import 'package:app_doacao/roupas.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';

import 'login.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
// ignore: import_of_legacy_library_into_null_safe

void main() {
  runApp(MaterialApp(home: login()));

}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return _introScreen();
  }
}

Widget _introScreen() {
  return Stack(
    children: [
      SplashScreen(
        seconds: 5,
        loaderColor: Colors.transparent,
        navigateAfterSeconds: const login(),
      ),
      Scaffold(
        backgroundColor: const Color(0x00A6FF),
        body: Container(
          color: const Color(0x00A6FF),
          padding: const EdgeInsets.all(20),
          child: Center(
            child: SizedBox(
              height: 128,
              width: 128,
              child: Image.asset("assets/icones/logo.png"),
            ),
          ),
        ),
      )
    ],
  );
}
