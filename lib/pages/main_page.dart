import 'package:flutter/material.dart';
import 'package:imc/pages/dados_cadastro.dart';

import 'dicas_page.dart';
import 'help_page.dart';
import 'lista_imc_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController controller = PageController(initialPage: 0);
  int positionPage = 0;

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
                            builder: (context) =>  const CadastroPage()));
                  },
                ),
                const Divider(),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    positionPage = value;
                  });
                },
                children: const [
                  DicasPage(),
                  ListImcPage(),
                  HelpPage(),
                ],
              ),
            ),
            BottomNavigationBar(
                onTap: (value) {
                  controller.jumpToPage(value);
                },
                currentIndex: positionPage,
                items: const [
                  BottomNavigationBarItem(
                      label: "Dicas", icon: Icon(Icons.tips_and_updates)),
                  BottomNavigationBarItem(
                      label: "home", icon: Icon(Icons.home_max)),
                  BottomNavigationBarItem(label: "help", icon: Icon(Icons.help))
                ])
          ],
        ),
      ),
    );
  }
}
