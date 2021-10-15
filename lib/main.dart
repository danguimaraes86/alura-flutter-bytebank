import 'package:flutter/material.dart';

import 'lista_de_tranferencias.dart';

void main() => runApp(Bytebank());

class Bytebank extends StatelessWidget {
  Bytebank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ListaDeTransferencias(),
      debugShowCheckedModeBanner: false,
    );
  }
}
