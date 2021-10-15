import 'package:alura_bytebank/formulario_transferencia.dart';
import 'package:flutter/material.dart';

class ListaDeTransferencias extends StatefulWidget {
  ListaDeTransferencias({Key? key}) : super(key: key);
  final List<Transferencia> _transferenciasList = [];

  @override
  State<StatefulWidget> createState() {
    return ListaTransferenciaState();
  }
}

class ListaTransferenciaState extends State<ListaDeTransferencias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bytebank'),
      ),
      body: ListView.builder(
        itemCount: widget._transferenciasList.length,
        itemBuilder: (context, index) {
          return ItemTransferencia(widget._transferenciasList[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future<Transferencia?> future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const FormularioTransferencia();
          }));
          future.then((novaTransferencia) {
            if (novaTransferencia != null) {
              setState(() {
                widget._transferenciasList.add(novaTransferencia);
              });
            }
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
