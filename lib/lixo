import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userController = TextEditingController(text: "");
  var passwordController = TextEditingController(text: "");
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Verificador de imc",
            style: GoogleFonts.roboto(),
          ),
        ),
        body: Container(
          color: Colors.black,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                  Container(
                    color: Colors.white10,
                      child: const Text(
                    "nome",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),),
                  const SizedBox(
                    height: 50,
                    width: 50,
                  ),
                  Container(
                    color: Colors.white10,
                    child: const Text(
                      "image",
                      style: TextStyle(color: Colors.white, fontSize: 25),
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
                      style: TextStyle(color: Colors.white, fontSize: 25),
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
                      style: TextStyle(color: Colors.white, fontSize: 25),
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
