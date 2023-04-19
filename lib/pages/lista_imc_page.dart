import 'package:flutter/material.dart';
import 'package:imc/services/widget.dart';

class ListImcPage extends StatefulWidget {
  const ListImcPage({super.key});

  @override
  State<ListImcPage> createState() => _ListImcPageState();
}

class _ListImcPageState extends State<ListImcPage> {

  String _resultado = "Faca seu cadastro, para verificar o IMC";


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Container(
              alignment: Alignment.center,
              child: TextWidget(texto: _resultado))],
        ),
      ),
    );
  }
}
