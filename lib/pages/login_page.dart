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
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
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
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 35,
                  color: Colors.amberAccent,
                  alignment: Alignment.center,
                  child: const TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 0),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: "Usuario",
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.person, color: Colors.black),
                    ),
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
                  child: const TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 0),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: "Senha",
                        hintStyle: TextStyle(color: Colors.black),
                        prefixIcon: Icon(Icons.password, color: Colors.black),
                        suffixIcon:
                            Icon(Icons.visibility_off, color: Colors.black)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.yellow)),
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 250,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 35,
                  color: const Color.fromARGB(255, 224, 221, 211),
                  alignment: Alignment.center,
                  child: const Text("cadastrar"),
                ),
                //expanded para nao quebrar os widgets com tamanho fixos
                Expanded(child: Container()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
