// ignore_for_file: prefer_const_constructors

import 'package:app_doacao/login.dart';
import 'package:flutter/material.dart';

class esqueceusenha extends StatefulWidget {
  const esqueceusenha({Key? key}) : super(key: key);

  @override
  State<esqueceusenha> createState() => _esqueceusenhaState();
}

class _esqueceusenhaState extends State<esqueceusenha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20.0),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          SizedBox(height: 25),
          Padding(
              padding: EdgeInsets.only(right: 330.0),
              child: SizedBox(
                  height: 30,
                  width: 30,
                  child: GestureDetector(
                      child: Image.asset("assets/icones/seta.png"),
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => login()))))),
          SizedBox(height: 205),
          Text(
            "Esqueceu Sua senha?",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Roboto', fontSize: 32, color: Color(0xff5c605c)),
          ),
          SizedBox(
            height: 60,
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                filled: true,
                contentPadding: const EdgeInsets.all(10),
                fillColor: const Color(0xffbce6f3),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(25)),
                hintText: "Insira seu E-mail",
                hintStyle: const TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 15,
                    color: const Color(0xff5c605c))),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xff7aceeca))),
            onPressed: (null),
            child: const Text(
              "Enviar",
              style: TextStyle(fontFamily: 'Lato', color: Color(0xff5c605c)),
            ),
          ),
        ],
      ),
    );
  }
}
