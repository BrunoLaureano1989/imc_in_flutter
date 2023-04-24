import 'package:flutter/material.dart';
import 'package:imc/repository/imc_calc.dart';

class ListImcPage extends StatefulWidget {
  const ListImcPage({super.key});

  @override
  State<ListImcPage> createState() => _ListImcPageState();
}

class _ListImcPageState extends State<ListImcPage> {
  String resultado = "Faca seu cadastro, para verificar o IMC";

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Text(resultado),
    );
  }
}

class $ {
}
