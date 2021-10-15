import 'package:alura_bytebank/components/form_input_editor.dart';
import 'package:alura_bytebank/models/transferencias.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatefulWidget {
  const FormularioTransferencia({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _descricaoController = TextEditingController();
  final TextEditingController _valorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova Transferência'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FormInputEditor(
              controller: _descricaoController,
              icon: Icons.text_fields,
              label: 'Descrição',
              hint: 'Insira uma descrição',
              textInputType: TextInputType.text,
            ),
            FormInputEditor(
              controller: _valorController,
              icon: Icons.monetization_on,
              label: 'Valor',
              hint: 'Insira o valor. Ex.: 0.00',
              textInputType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                _criarNovaTransferencia(
                  context,
                  _descricaoController.text,
                  _valorController.text,
                );
              },
              child: const Text('Confirmar'),
            ),
          ],
        ),
      ),
    );
  }

  void _criarNovaTransferencia(context, descricao, valor) {
    if (descricao.toString().isNotEmpty &&
        valor.toString().isNotEmpty &&
        double.tryParse(valor) != null) {
      final novaTransferencia = Transferencia(
        valor: double.parse(valor),
        descricao: descricao,
      );
      Navigator.pop(context, novaTransferencia);
    }
  }
}
