import 'package:flutter/material.dart';
import 'home.dart';

class pix extends StatefulWidget {
  const pix({Key? key}) : super(key: key);

  @override
  State<pix> createState() => _pixState();
}

class _pixState extends State<pix> {
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
              padding: EdgeInsets.only(right:290.0),
                  child: SizedBox(
                  height: 30,
                  width: 30,
                  child: GestureDetector(
                      child: Image.asset("assets/icones/seta.png"),
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home()))))),
          SizedBox(height: 35),
          Text(
            "Digite o valor a ser doado",
            style: TextStyle(
                fontFamily: 'Roboto', fontSize: 32, color: Color(0xff1F2D3D)),
          ),
          SizedBox(height: 35),
          Container(
            height: 50,
            child: TextField(
              maxLines: null,
              expands: true,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  filled: true,
                  contentPadding: const EdgeInsets.all(10),
                  fillColor: const Color(0xffbce6f3),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  hintText: ("20,00"),
                  hintStyle: const TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20,
                      color: const Color(0xff5c605c))),
            ),
          ),
          SizedBox(height: 35),
          Container(
            height: 150,
            color: Colors.grey,
            padding: EdgeInsets.all(10),
            child: Text(
              "Para finalizar sua doação basta clicar em copiar QR Code e colar o conteudo no APP do seu banco na area de pagamentos via Pix copia e cola",
              style: TextStyle(fontFamily: 'Lato', fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 15),
          SizedBox(
            height: 256,
            width: 256,
            child: Image.asset("assets/icones/pix.png"),
          ), //QR CODE PIX FICA AQUI
          SizedBox(height: 15),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xff7aceeca))),
            onPressed: (null),
            child: const Text(
              "Copiar QR Code",
              style: TextStyle(fontFamily: 'Lato', color: Color(0xff5c605c)),
            ),
          ),
        ],
      ),
    );
  }
}
