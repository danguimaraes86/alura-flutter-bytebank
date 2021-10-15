class Transferencia {
  final double valor;
  final String descricao;

  Transferencia({
    required this.valor,
    required this.descricao,
  });

  @override
  String toString() {
    return "Transferencia: $descricao, $valor ";
  }
}
