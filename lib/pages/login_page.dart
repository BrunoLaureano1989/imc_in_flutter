import 'package:flutter/material.dart';
import 'package:imc/pages/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var userController = TextEditingController(text: "bruno");
  var passwordController = TextEditingController(text: "123");

  bool isObscureText = true;

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
                  //adicionar GestureDetector longpress para dicas
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 35,
                  color: Colors.amberAccent,
                  alignment: Alignment.center,
                  child: TextField(
                    controller: userController,
                    onChanged: (value) {
                      //user = value;
                      //print(value.toString());
                    },
                    decoration: const InputDecoration(
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
                  //adicionar GestureDetector longpress para dicas
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 35,
                  color: Colors.amberAccent,
                  alignment: Alignment.center,
                  child: TextField(
                    obscureText: isObscureText,
                    controller: passwordController,
                    onChanged: (value) {
                      //password = value;
                      //print(value);
                    },
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 0),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: "Senha",
                      hintStyle: const TextStyle(color: Colors.black),
                      prefixIcon:
                          const Icon(Icons.password, color: Colors.black),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            isObscureText = !isObscureText;
                          });
                        },
                        child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  //adicionar GestureDetector longpress para dicas
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        if (userController.text.trim() == "bruno" &&
                            passwordController.text.trim() == "123") {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Sucesso no login")));
                                  //alterado push para pushReplacement
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MainPage()));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("error ao fazer o login")));
                        }
                      },
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
