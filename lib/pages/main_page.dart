import 'package:flutter/material.dart';
import 'package:imc/pages/dados_cadastro.dart';
import 'package:imc/repository/imc_calc.dart';
import 'package:imc/services/users_class.dart';

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
  int positionPage = 1;
  PessoaRepository lista = PessoaRepository();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),        
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
                  onTap: () async{
                    Navigator.pop(context);
                    var pessoa = await Navigator.push<Pessoa?>(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CadastroPage()));
                        if(pessoa !=null){
                        setState(() {
lista.addPessoas(pessoa);
  });
                        }
                  },
                ),
                const Divider(),
              ],
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.fromLTRB(35, 0, 0, 50),
          child: Container(            
            alignment: Alignment.bottomCenter,
            child: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () async{
                Navigator.canPop(context);
                var pessoa = await Navigator.push<Pessoa?>(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CadastroPage()));
                        if(pessoa !=null){
debugPrint(pessoa.getNome);
  setState(() {
lista.addPessoas(pessoa);
  });
                        }
              },
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
                children:  [
                  const DicasPage(),
                  ListImcPage(lista:lista),
                  const HelpPage(),
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
