import '../utils/item_tabela.dart'; // Import the ItemTabela interface
import 'consulta.dart';
import 'exame.dart';
import 'shared/estado.dart';

class Pagamento implements ItemTabela {
  static int _idCounter = 0;
  final int id;

  Exame? exame;
  Consulta? consulta;
  StatusPagamento status;
  final String formaPagamento;
  final String codPagamento;
  late final double? valor;

  Pagamento({
    this.exame,
    this.consulta,
    required this.status,
    required this.formaPagamento,
    required this.codPagamento,
  })  : id = ++_idCounter,
        valor = exame != null ? exame.valor : consulta?.valor;

  @override
  String pegarValor(String coluna) {
    switch (coluna) {
      case 'ID':
        return id.toString();
      case 'Exame':
        return exame?.id.toString() ?? '';
      case 'Consulta':
        return consulta?.id.toString() ?? '';
      case 'Status':
        return status.toString();
      case 'Forma de Pag.':
        return formaPagamento;
      case 'Código de Pag.':
        return codPagamento;
      case 'Valor':
        return valor?.toString() ?? '';
      default:
        return '';
    }
  }
}
