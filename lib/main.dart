import 'package:flutter/material.dart';

import 'lista_de_tranferencias.dart';
import 'formulario_transferencia.dart';

void main() => runApp(Bytebank());

class Bytebank extends StatelessWidget {
  Bytebank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: FormularioTransferencia(),
      debugShowCheckedModeBanner: false,
    );
  }
}
