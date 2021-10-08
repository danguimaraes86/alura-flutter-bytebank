import 'package:flutter/material.dart';

import 'lista_de_tranferencias.dart';
import 'formulario_transferencia.dart';

void main() => runApp(const Bytebank());

class Bytebank extends StatelessWidget {
  const Bytebank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: FormularioTransferencia(),
      debugShowCheckedModeBanner: false,
    );
  }
}
