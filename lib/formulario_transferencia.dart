import 'package:flutter/material.dart';

class FormularioTransferencia extends StatelessWidget {
  const FormularioTransferencia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova Transferência'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.text_fields),
                labelText: 'Descrição',
                hintText: 'Insira uma descrição',
              ),
              keyboardType: TextInputType.text,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.monetization_on),
                labelText: 'Valor',
                hintText: 'Insira o valor. Ex.: 0.00',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Confirmar'),
          ),
        ],
      ),
    );
  }
}
