import 'package:alura_bytebank/formulario_transferencia.dart';
import 'package:flutter/material.dart';

class ListaDeTransferencias extends StatelessWidget {
  ListaDeTransferencias({Key? key}) : super(key: key);
  final List<Transferencia> _transferenciasList = [];

  @override
  Widget build(BuildContext context) {
    _transferenciasList.add(Transferencia(10.0, 'cafezinho'));
    _transferenciasList.add(Transferencia(100.0, 'almoço'));
    _transferenciasList.add(Transferencia(200.0, 'drinks'));

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
          final Future<Transferencia?> future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          }));
          future.then((novaTransferencia) {
            print(novaTransferencia);
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;
  const ItemTransferencia(this._transferencia, {Key? key}) : super(key: key);

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

class Transferencia {
  final double valor;
  final String descricao;

  Transferencia(this.valor, this.descricao);

  @override
  String toString() {
    return "Transferencia: $descricao, $valor ";
  }
}
