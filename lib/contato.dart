import 'package:flutter/material.dart';
import 'home.dart';

class contato extends StatefulWidget {
  const contato({Key? key}) : super(key: key);

  @override
  State<contato> createState() => _contatoState();
}

class _contatoState extends State<contato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
            padding: EdgeInsets.all(20),
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
                          MaterialPageRoute(builder: (context) => home()))))),
          SizedBox(height: 200),
          Text(
            "Contate-nos",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Roboto', fontSize: 32, color: Color(0xff1F2D3D)),
          ),
          SizedBox(height: 70),
          Container(color: Color(0xffbce6f3), height: 250)
        ]));
  }
}
