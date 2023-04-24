import 'package:imc/services/users_class.dart';

class PessoaRepository {
  final List<Pessoa> _pessoas = [];

  void addPessoas(Pessoa pessoa) async {
    await Future.delayed(const Duration(seconds: 1));
    _pessoas.add(pessoa);
  }

  Future<List<Pessoa>> listarPessoas() async {
    await Future.delayed(const Duration(seconds: 1));
    return _pessoas;
  }
}
