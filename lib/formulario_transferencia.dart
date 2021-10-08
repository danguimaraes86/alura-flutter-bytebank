import 'package:flutter/material.dart';

class FormularioTransferencia extends StatelessWidget {
  const FormularioTransferencia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Nova Transferência'),
        ),
        body: Container(
          child: Text('Formulário'),
        ));
  }
}
