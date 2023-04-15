import 'package:flutter/material.dart';

class CadastroPage extends StatelessWidget {
  const CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Cadastro de imc"),
        ),
        body: const Center(
          child: Text("dados cadastrais"),
        ),
      ),
    );
  }
}
