import 'package:app_doacao/home.dart';
import 'package:flutter/material.dart';

class alimento extends StatefulWidget {
  const alimento({Key? key}) : super(key: key);

  @override
  State<alimento> createState() => _alimentoState();
}

class _alimentoState extends State<alimento> {
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
              padding: EdgeInsets.only(right: 290.0),
              child: SizedBox(
                  height: 30,
                  width: 30,
                  child: GestureDetector(
                      child: Image.asset("assets/icones/seta.png"),
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home()))))),
          SizedBox(height: 15),
          Column(
            children: [
              SizedBox(
                height: 64,
                width: 64,
                child: Image.asset("assets/icones/alimento.png"),
              ),
              SizedBox(height: 5),
              Text(
                "Alimentos",
                style: TextStyle(fontFamily: 'Lato', color: Color(0xff5c605c)),
              )
            ],
          ),
          SizedBox(height: 25),
          Text(
            "O que pretende doar hoje?",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Roboto', fontSize: 32, color: Color(0xff5c605c)),
          ),
          SizedBox(height: 50),
          TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                filled: true,
                contentPadding: const EdgeInsets.all(10),
                fillColor: const Color(0xffbce6f3),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(25)),
                hintText: "Nome do item",
                hintStyle: const TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 15,
                    color: const Color(0xff5c605c))),
          ),
          SizedBox(height: 15),
          TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                filled: true,
                contentPadding: const EdgeInsets.all(10),
                fillColor: const Color(0xffbce6f3),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(25)),
                hintText: "Local do item",
                hintStyle: const TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 15,
                    color: const Color(0xff5c605c))),
          ),
          SizedBox(height: 15),
          TextField(
            keyboardType: TextInputType.name,
            minLines: 15,
            maxLines: 20,
            decoration: InputDecoration(
                filled: true,
                contentPadding: const EdgeInsets.all(10),
                fillColor: const Color(0xffbce6f3),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(25)),
                hintText: "Descrição do item",
                hintStyle: const TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 15,
                    color: const Color(0xff5c605c))),
          ),
          SizedBox(height: 15),
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
