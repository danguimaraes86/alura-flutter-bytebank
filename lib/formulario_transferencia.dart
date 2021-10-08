import 'package:flutter/material.dart';

class FormularioTransferencia extends StatelessWidget {
  FormularioTransferencia({Key? key}) : super(key: key);

  final TextEditingController _textEditingControllerDescricao =
      TextEditingController();
  final TextEditingController _textEditingControllerValor =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova Transferência'),
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: TextField(
              controller: _textEditingControllerDescricao,
              decoration: const InputDecoration(
                icon: Icon(Icons.text_fields),
                labelText: 'Descrição',
                hintText: 'Insira uma descrição',
              ),
              keyboardType: TextInputType.text,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: TextField(
              controller: _textEditingControllerValor,
              decoration: const InputDecoration(
                icon: Icon(Icons.monetization_on),
                labelText: 'Valor',
                hintText: 'Insira o valor. Ex.: 0.00',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print('botão clicado');
              print(_textEditingControllerDescricao.text);
              print(_textEditingControllerValor.text);
            },
            child: const Text('Confirmar'),
          ),
        ],
      ),
    );
  }
}
