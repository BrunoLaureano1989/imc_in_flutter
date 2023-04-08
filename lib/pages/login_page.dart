import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //Safearea usar o tamanho total do celular o monitor sem quebrar a altura e opcoes do celular.
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 225, 237, 247),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //margem entre os widget
              const SizedBox(
                height: 100,
              ),
              //imagem de login page
              const Icon(
                Icons.person,
                size: 150,
                color: Colors.black,
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 35,
                color: Colors.amberAccent,
                alignment: Alignment.center,
                child: Row(
                  children: const [
                    Expanded(flex: 3, child: Text("Digite seu Usuario")),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(flex: 2, child: Text("Usuario"))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 35,
                color: Colors.amberAccent,
                alignment: Alignment.center,
                child: Row(
                  children: const [
                    Expanded(flex: 3, child: Text("Digite sua senha")),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(flex: 2, child: Text("Senha")),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 35,
                color: Colors.amberAccent,
                alignment: Alignment.center,
                child: const Text("Entrar"),
              ),
              const SizedBox(
                height: 250,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 35,
                color: Color.fromARGB(255, 224, 221, 211),
                alignment: Alignment.center,
                child: const Text("cadastrar"),
              ),
              //expanded para nao quebrar os widgets com tamanho fixos
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
