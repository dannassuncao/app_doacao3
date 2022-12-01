// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:app_doacao/login.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:app_doacao/login.dart';
import 'package:form_validator/form_validator.dart';

class cadastro extends StatefulWidget {
  const cadastro({Key? key}) : super(key: key);

  @override
  State<cadastro> createState() => _cadastroState();
}

class _cadastroState extends State<cadastro> {
  TextEditingController cpf = TextEditingController();
  TextEditingController nome = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController cep = TextEditingController();
  TextEditingController endereco = TextEditingController();
  TextEditingController cidade = TextEditingController();
  TextEditingController estado = TextEditingController();
  TextEditingController telefone = TextEditingController();
  TextEditingController senha = TextEditingController();

  Future cadastro(BuildContext cont) async {
    if (cpf.text == "" ||
        nome.text == "" ||
        email.text == "" ||
        cep.text == "" ||
        endereco.text == "" ||
        cidade.text == "" ||
        estado.text == "" ||
        telefone.text == "" ||
        senha.text == "") {
      Fluttertoast.showToast(
        msg: "Preencha todos os campos!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        fontSize: 16.0,
      );
    } else {
      var url = Uri.parse(
          "https://2ca2-2804-14d-7842-9315-d0e9-4127-384e-9871.sa.ngrok.io/app_doacao/cadastro.php");
      var response = await http.post(url, body: {
        "cpf": cpf.text,
        "nome": nome.text,
        "email": email.text,
        "cep": cep.text,
        "endereco": endereco.text,
        "cidade": cidade.text,
        "estado": estado.text,
        "telefone": telefone.text,
        "senha": senha.text,
      });

      var data = json.decode(response.body);
      if (data == "Usuário cadastrado com sucesso!") {
        Fluttertoast.showToast(
          msg: "Usuário cadastrado com sucesso!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          fontSize: 16.0,
        );
        Fluttertoast.showToast(
          msg: "Agora faça seu login!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          fontSize: 16.0,
        );

        Navigator.push(cont, MaterialPageRoute(builder: (context) => login()));
      } else {
        Fluttertoast.showToast(
          msg: data,
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
      body: Form(
        child: ListView(
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
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => login()))))),
            SizedBox(height: 20),
            Text(
              "Cadastre-se",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Roboto', fontSize: 32, color: Color(0xff5c605c)),
            ),
            SizedBox(height: 30),
            TextField(
              controller: cpf,
              maxLength: 11,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  filled: true,
                  contentPadding: const EdgeInsets.all(10),
                  fillColor: const Color(0xffbce6f3),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(25)),
                  hintText: "CPF",
                  hintStyle: const TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 15,
                      color: const Color(0xff5c605c))),
            ),
            SizedBox(height: 5),
            TextField(
              controller: nome,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  filled: true,
                  contentPadding: const EdgeInsets.all(10),
                  fillColor: const Color(0xffbce6f3),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(25)),
                  hintText: "Nome Completo",
                  hintStyle: const TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 15,
                      color: const Color(0xff5c605c))),
            ),
            SizedBox(height: 5),
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
            SizedBox(height: 5),
            TextField(
              controller: cep,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  filled: true,
                  contentPadding: const EdgeInsets.all(10),
                  fillColor: const Color(0xffbce6f3),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(25)),
                  hintText: "CEP",
                  hintStyle: const TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 15,
                      color: const Color(0xff5c605c))),
            ),
            SizedBox(height: 5),
            TextField(
              controller: endereco,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  filled: true,
                  contentPadding: const EdgeInsets.all(10),
                  fillColor: const Color(0xffbce6f3),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(25)),
                  hintText: "Endereço",
                  hintStyle: const TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 15,
                      color: const Color(0xff5c605c))),
            ),
            SizedBox(height: 5),
            TextField(
              controller: cidade,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  filled: true,
                  contentPadding: const EdgeInsets.all(10),
                  fillColor: const Color(0xffbce6f3),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(25)),
                  hintText: "Cidade",
                  hintStyle: const TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 15,
                      color: const Color(0xff5c605c))),
            ),
            SizedBox(height: 5),
            TextField(
              controller: estado,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  filled: true,
                  contentPadding: const EdgeInsets.all(10),
                  fillColor: const Color(0xffbce6f3),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(25)),
                  hintText: "Estado",
                  hintStyle: const TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 15,
                      color: const Color(0xff5c605c))),
            ),
            SizedBox(height: 5),
            TextField(
              controller: telefone,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  filled: true,
                  contentPadding: const EdgeInsets.all(10),
                  fillColor: const Color(0xffbce6f3),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(25)),
                  hintText: "Telefone",
                  hintStyle: const TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 15,
                      color: const Color(0xff5c605c))),
            ),
            SizedBox(height: 5),
            TextField(
              controller: senha,
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
            SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  contentPadding: const EdgeInsets.all(10),
                  fillColor: const Color(0xffbce6f3),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(25)),
                  hintText: "Repita a Senha",
                  hintStyle: const TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 15,
                      color: const Color(0xff5c605c))),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xff7aceeca))),
              onPressed: () {
                cadastro(context);
              },
              child: const Text(
                "Cadastrar",
                style: TextStyle(fontFamily: 'Lato', color: Color(0xff5c605c)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
