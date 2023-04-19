import 'package:flutter/material.dart';

import '../services/widget.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  TextEditingController nomeController = TextEditingController(text: "");
  TextEditingController alturaController = TextEditingController(text: "");
  TextEditingController pesoController = TextEditingController(text: "");
  TextEditingController dataNascimentoController =
      TextEditingController(text: "");

      void _resetCampos () {
        nomeController.text = "";
        alturaController.text = "";
        pesoController.text = "";
        dataNascimentoController.text = "";
      }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro de imc"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //const TextWidget(texto: 'Nome Completo'),
            TextField(
              decoration: const InputDecoration(
                labelText: "Nome",
                labelStyle: TextStyle(color: Colors.black87),
              ),
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87),
              controller: nomeController,
            ),
            const SizedBox(
              height: 10,
            ),
            //const TextWidget(texto: "Data de Nascimento"),
            TextField(
                decoration: const InputDecoration(
                  labelText: "Data",
                  labelStyle: TextStyle(color: Colors.black87),
                ),
                textAlign: TextAlign.start,
                controller: dataNascimentoController,
                readOnly: true,
                onTap: () async {
                  var data = await showDatePicker(
                      context: context,
                      initialDate: DateTime(1989, 01, 16),
                      firstDate: DateTime(1989, 1, 16),
                      lastDate: DateTime(2099, 12, 31));
                  if (data != null) {
                    dataNascimentoController.text = data.toString();
                  }
                }),
            const SizedBox(
              height: 10,
            ),
            //const TextWidget(texto: "Altura"),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Altura",
                labelStyle: TextStyle(color: Colors.black87),
              ),
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87),
              controller: alturaController,
            ),
            const SizedBox(
              height: 10,
            ),
            //const TextWidget(texto: "Peso"),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Peso",
                labelStyle: TextStyle(color: Colors.black87),
              ),
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87),
              controller: pesoController,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  
                  
        
                  



                },
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
                  backgroundColor:
                      const MaterialStatePropertyAll(Colors.greenAccent),
                ),
                child: const TextWidget(texto: "Salvar"),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
