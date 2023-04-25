import 'package:flutter/material.dart';
import 'package:imc/repository/imc_calc.dart';

import '../services/users_class.dart';

class ListImcPage extends StatefulWidget {
  final PessoaRepository lista;
  const ListImcPage({super.key, required this.lista});

  @override
  State<ListImcPage> createState() => _ListImcPageState();
}

class _ListImcPageState extends State<ListImcPage> {
  String resultado = "Faca seu cadastro, para verificar o IMC";
  final _pessoa = <Pessoa>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: widget.lista.listarPessoas(),
        builder: (_, snap) {
          switch (snap.connectionState) {
            case ConnectionState.waiting:
              return const Center(
                child: CircularProgressIndicator(),
              );

            default:
              //if(snap.hasError)
              if (snap.hasData && (snap.data?.isNotEmpty ?? false)) {
                debugPrint(snap.data?.length.toString());
                return ListView.builder(
                  itemBuilder: (_, index) => _itemBuilder(snap.data![index]),
                  itemCount: snap.data?.length,
                );
              } else {
                return const Center(
                  child: Text('lista vazia'),
                );
              }
          }
        },
      ),
    );
  }

  Widget? _itemBuilder(Pessoa pessoa) {
    return ListTile(
      leading: const Icon(Icons.person),
      trailing: Icon(
        Icons.monitor_weight_outlined,
        color: pessoa.color,
      ),
      title: Text(pessoa.getNome),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(pessoa.calculate2.toStringAsFixed(2)),
          Text(pessoa.tabela2)
        ],
      ),
    );
  }
}

class $ {}
