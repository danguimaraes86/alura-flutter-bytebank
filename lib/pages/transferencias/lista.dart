import 'package:alura_bytebank/models/transferencias.dart';
import 'package:alura_bytebank/pages/transferencias/formulario.dart';
import 'package:flutter/material.dart';

class ListaDeTransferencias extends StatefulWidget {
  const ListaDeTransferencias({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ListaTransferenciaState();
  }
}

class ListaTransferenciaState extends State<ListaDeTransferencias> {
  final List<Transferencia> _transferenciasList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bytebank'),
      ),
      body: ListView.builder(
        itemCount: _transferenciasList.length,
        itemBuilder: (context, index) {
          return ItemTransferencia(_transferenciasList[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const FormularioTransferencia();
          })).then(
              (novaTransferencia) => _addNovaTransferencia(novaTransferencia));
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _addNovaTransferencia(novaTransferencia) {
    if (novaTransferencia != null) {
      setState(() {
        _transferenciasList.add(novaTransferencia);
      });
    }
  }
}

class ItemTransferencia extends StatelessWidget {
  const ItemTransferencia(this._transferencia, {Key? key}) : super(key: key);

  final Transferencia _transferencia;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.descricao),
      ),
    );
  }
}
