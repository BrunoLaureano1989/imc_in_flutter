import 'package:imc/services/users_class.dart';

class ImcCalc {
  final List<Pessoas> _pessoas = [];

  void addPessoas(Pessoas pessoa) async {
    await Future.delayed(const Duration(seconds: 1));
    _pessoas.add(pessoa);
  }

  Future<List<Pessoas>> listarPessoas() async {
    await Future.delayed(const Duration(seconds: 1));
    return _pessoas;
  }
}
