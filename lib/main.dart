import 'package:flutter/material.dart';
import 'package:alura_bytebank/lista_de_tranferencias.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Conversor de Moedas'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('teste');
          },
          child: const Icon(Icons.add),
        ),
        body: const ListaDeTransferencias(),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
