import 'package:alura_bytebank/lista_de_tranferencias.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatelessWidget {
  FormularioTransferencia({Key? key}) : super(key: key);

  final TextEditingController _descricaoController = TextEditingController();
  final TextEditingController _valorController = TextEditingController();

  void criarNovaTransferencia(descricao, valor) {
    if (descricao.toString().isNotEmpty &&
        valor.toString().isNotEmpty &&
        double.tryParse(valor) != null) {
      Transferencia novaTransferencia =
          Transferencia(double.parse(valor), descricao);
      print(novaTransferencia);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova Transferência'),
      ),
      body: Column(
        children: [
          FormEditor(
              controller: _descricaoController,
              icon: Icons.text_fields,
              label: 'Descrição',
              hint: 'Insira uma descrição',
              textInputType: TextInputType.text),
          FormEditor(
              controller: _valorController,
              icon: Icons.monetization_on,
              label: 'Valor',
              hint: 'Insira o valor. Ex.: 0.00',
              textInputType: TextInputType.number),
          ElevatedButton(
            onPressed: () {
              criarNovaTransferencia(
                  _descricaoController.text, _valorController.text);
            },
            child: const Text('Confirmar'),
          ),
        ],
      ),
    );
  }
}

class FormEditor extends StatelessWidget {
  final TextEditingController controller;
  final IconData? icon;
  final String label;
  final String? hint;
  final TextInputType? textInputType;

  FormEditor(
      {required this.controller,
      this.icon,
      required this.label,
      this.hint,
      this.textInputType,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(icon),
          labelText: label,
          hintText: hint,
        ),
        keyboardType: textInputType,
      ),
    );
  }
}
