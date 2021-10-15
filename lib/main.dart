import 'package:alura_bytebank/pages/transferencias/lista.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Bytebank());

class Bytebank extends StatelessWidget {
  const Bytebank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: ListaDeTransferencias(),
      debugShowCheckedModeBanner: false,
    );
  }
}
