// ignore_for_file: prefer_const_constructors, unused_import, unused_local_variable

import 'dart:convert';

import 'package:app_doacao/cadastro.dart';
import 'package:app_doacao/esqueceusenha.dart';
import 'package:app_doacao/home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'esqueceusenha.dart';
import 'package:fluttertoast/fluttertoast.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController email = TextEditingController();
  TextEditingController senha = TextEditingController();

  Future login(BuildContext cont) async {
    if (email.text == "" || senha.text == "") {
      Fluttertoast.showToast(
        msg: "Os campos não podem estar em branco!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        fontSize: 16.0,
      );
    } else {
      var url = Uri.parse("https://appdoacao.000webhostapp.com/login.php");
      var response = await http.post(url, body: {
        "email": email.text,
        "senha": senha.text,
      });

      var data = json.decode(response.body);
      if (data == "sucesso") {
        Fluttertoast.showToast(
          msg: "Login efetuado com sucesso!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          fontSize: 16.0,
        );

        Navigator.push(cont, MaterialPageRoute(builder: (context) => home()));
      } else {
        Fluttertoast.showToast(
          msg: "O usuario não existe ou senha incorreta",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          fontSize: 16.0,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              const SizedBox(
                height: 25,
                width: 25,
              ),
              SizedBox(
                height: 128,
                width: 128,
                child: Image.asset("assets/icones/logo.png"),
              ),
              const SizedBox(
                height: 95,
                width: 95,
              ),
              // ignore: prefer_const_constructors
              TextField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    filled: true,
                    contentPadding: const EdgeInsets.all(10),
                    fillColor: const Color(0xffbce6f3),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(25)),
                    hintText: "E-mail",
                    hintStyle: const TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 15,
                        color: const Color(0xff5c605c))),
              ),
              const SizedBox(
                height: 15,
                width: 15,
              ),
              TextField(
                controller: senha,
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    contentPadding: const EdgeInsets.all(10),
                    fillColor: const Color(0xffbce6f3),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(25)),
                    hintText: "Senha",
                    hintStyle: const TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 15,
                        color: const Color(0xff5c605c))),
              ),
              const SizedBox(
                height: 10,
                width: 10,
              ),

              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xff7aceeca))),
                onPressed: () {
                  login(context);
                },
                child: const Text(
                  "Entrar",
                  style:
                      TextStyle(fontFamily: 'Lato', color: Color(0xff5c605c)),
                ),
              ),
              const SizedBox(height: 80),
              TextButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => esqueceusenha())),
                child: Text("Esqueceu a senha? ",
                    style: TextStyle(
                        fontFamily: 'Lato', color: Colors.blue, fontSize: 15)),
              ),
              TextButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => cadastro())),
                child: Text("Não tem uma conta? Cadastre-se",
                    style: TextStyle(
                        fontFamily: 'Lato', color: Colors.blue, fontSize: 15)),
              )
            ],
          )),
    ));
  }
}
