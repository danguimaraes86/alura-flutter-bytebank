import 'package:flutter/material.dart';

class ListaDeTransferencias extends StatelessWidget {
  const ListaDeTransferencias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bytebank'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('teste'),
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          ItemTransferencia(Transferencia(10.0, 'cafezinho')),
          ItemTransferencia(Transferencia(100.0, 'almoço')),
          ItemTransferencia(Transferencia(200.0, 'drinks')),
        ],
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
