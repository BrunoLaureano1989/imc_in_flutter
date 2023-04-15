import 'package:flutter/material.dart';
import 'package:imc/pages/dados_cadastro.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Verificador de imc",
          ),
        ),
        // menu hamburguers
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: double.infinity,
                      child: const Text(
                        "Cadastrar",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 25),
                      )),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CadastroPage()));
                  },
                ),
                const Divider(),
              ],
            ),
          ),
        ),

        body: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: Colors.white10,
                    child: const Text(
                      "nome",
                      style: TextStyle(color: Colors.black87, fontSize: 25),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                    width: 50,
                  ),
                  Container(
                    color: Colors.white10,
                    child: const Text(
                      "image",
                      style: TextStyle(color: Colors.black87, fontSize: 25),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: Colors.white10,
                    child: const Text(
                      "date",
                      style: TextStyle(color: Colors.black87, fontSize: 25),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                    width: 50,
                  ),
                  Container(
                    color: Colors.white10,
                    child: const Text(
                      "resultado",
                      style: TextStyle(color: Colors.black87, fontSize: 25),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
