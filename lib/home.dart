// ignore_for_file: prefer_const_constructors
// ignore: prefer_const_constructors
import 'package:app_doacao/alimento.dart';
import 'package:app_doacao/causas.dart';
import 'package:app_doacao/contato.dart';
import 'package:app_doacao/eletro.dart';
import 'package:app_doacao/horarios.dart';
import 'package:app_doacao/login.dart';
import 'package:app_doacao/moveis.dart';
import 'package:app_doacao/pix.dart';
import 'package:app_doacao/politicas.dart';
import 'package:flutter/material.dart';
import 'roupas.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Color(0xff00A6FF),
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Bem vindo FGE",
                  style: TextStyle(
                      fontFamily: 'Roboto', color: Colors.white, fontSize: 20),
                ),
                accountEmail: Text(
                  "fge.metodista.com.br",
                  style: TextStyle(
                      fontFamily: 'Roboto', color: Colors.white, fontSize: 12),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).platform == TargetPlatform.iOS
                          ? Color(0xff327DC1)
                          : Colors.white,
                  child: Text(
                    "F",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.add_call, color: Colors.white),
                title: Text(
                  "Contate-nos",
                  style: TextStyle(fontFamily: "lato", color: Colors.white),
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => contato())),
              ),
              ListTile(
                leading:
                    Icon(Icons.health_and_safety_rounded, color: Colors.white),
                title: Text(
                  "Minhas doações",
                  style: TextStyle(fontFamily: "lato", color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.book,
                  color: Colors.white,
                ),
                title: Text(
                  "Nossa política",
                  style: TextStyle(fontFamily: "lato", color: Colors.white),
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => politicas())),
              ),
              ListTile(
                leading: Icon(
                  Icons.alarm,
                  color: Colors.white,
                ),
                title: Text(
                  "Horários de atendimento",
                  style: TextStyle(fontFamily: "lato", color: Colors.white),
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => horarios())),
              ),
              ListTile(
                leading: Icon(
                  Icons.blur_linear_rounded,
                  color: Colors.white,
                ),
                title: Text(
                  "Nossas causas",
                  style: TextStyle(fontFamily: "lato", color: Colors.white),
                ),
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => causas())),
              ),
              ListTile(
                leading: Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                ),
                title: Text(
                  "Sair",
                  style: TextStyle(fontFamily: "lato", color: Colors.white),
                ),
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => login())),
              ),
              ListTile(
                leading: Icon(
                  Icons.star_border_rounded,
                  color: Colors.white,
                ),
                title: Text(
                  "Avalie-nos",
                  style: TextStyle(fontFamily: "lato", color: Colors.white),
                ),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
          title: Text(
        "Bem Vindo!",
        style: TextStyle(fontFamily: 'Lato', color: Colors.white),
        textAlign: TextAlign.center,
      )),
      body: ListView(
        padding: EdgeInsets.all(20),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          SizedBox(height: 30),
          Text(
            "O que deseja doar hoje?",
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 32,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => pix())),
                child: Column(
                  children: [
                    SizedBox(
                      height: 64,
                      width: 64,
                      child: Image.asset("assets/icones/pix.png"),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "PIX",
                      style: TextStyle(
                          fontFamily: 'Lato', color: Color(0xff5c605c)),
                    )
                  ],
                ),
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(170, 150)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffbce6f3))),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => moveis())),
                child: Column(
                  children: [
                    SizedBox(
                      height: 64,
                      width: 64,
                      child: Image.asset("assets/icones/sofa.png"),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Móveis",
                      style: TextStyle(
                          fontFamily: 'Lato', color: Color(0xff5c605c)),
                    )
                  ],
                ),
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(170, 150)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffbce6f3))),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => eletro())),
                child: Column(
                  children: [
                    SizedBox(
                      height: 64,
                      width: 64,
                      child: Image.asset("assets/icones/fridge.png"),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Eletrodomesticos",
                      style: TextStyle(
                          fontFamily: 'Lato', color: Color(0xff5c605c)),
                    )
                  ],
                ),
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(170, 150)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffbce6f3))),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => roupas())),
                child: Column(
                  children: [
                    SizedBox(
                      height: 64,
                      width: 64,
                      child: Image.asset("assets/icones/roupa.png"),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Roupas",
                      style: TextStyle(
                          fontFamily: 'Lato', color: Color(0xff5c605c)),
                    )
                  ],
                ),
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(170, 150)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffbce6f3))),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => alimento())),
            child: Column(
              children: [
                SizedBox(
                  height: 64,
                  width: 64,
                  child: Image.asset("assets/icones/alimento.png"),
                ),
                SizedBox(height: 20),
                Text(
                  "Alimentos",
                  style:
                      TextStyle(fontFamily: 'Lato', color: Color(0xff5c605c)),
                )
              ],
            ),
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(170, 150)),
                backgroundColor: MaterialStateProperty.all(Color(0xffbce6f3))),
          )
        ],
      ),
    );
  }
}
