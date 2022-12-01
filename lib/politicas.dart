import 'home.dart';
import 'package:flutter/material.dart';

class politicas extends StatefulWidget {
  const politicas({Key? key}) : super(key: key);

  @override
  State<politicas> createState() => _politicasState();
}

class _politicasState extends State<politicas> {
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
            "Nossas Políticas",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Roboto', fontSize: 32, color: Color(0xff1F2D3D)),
          ),
          SizedBox(height: 70),
          Container(color: Color(0xffbce6f3), height: 250)
        ]));
  }
}
