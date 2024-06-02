// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mysquad/model/background.dart';

import '../../controller/login_controller.dart';

bool switchValue = false;

class TelaEsqueci extends StatefulWidget {
  const TelaEsqueci({super.key});

  @override
  State<TelaEsqueci> createState() => _TelaEsqueciState();
}

class _TelaEsqueciState extends State<TelaEsqueci> {
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  var txtEmailEsqueceuSenha = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //imagem de backgroud
          ImagemFundo(),
          SingleChildScrollView(
            padding: EdgeInsets.only(top: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo do app
                Container(
                  margin: EdgeInsets.fromLTRB(70, 0, 70, 10),
                  child: Image.asset(
                    "lib/images/logo2.png",
                    width: MediaQuery.of(context).size.width / 1.8,
                  ),
                ),

                //container principal
                Container(
                  padding: EdgeInsets.all(30),
                  margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 37, 65, 1),
                      border:
                          Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Recupere sua senha",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                        child: Text(
                          'Digite o e-mail usado para realizar seu cadastro:',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      TextField(
                        controller: txtEmailEsqueceuSenha,
                        style:
                            TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                        decoration: InputDecoration(
                            labelText: 'E-mail cadastrado:',
                            labelStyle: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.5)),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color.fromRGBO(255, 255, 255, 0.5),
                            ),
                            filled: true,
                            fillColor: Color.fromRGBO(54, 73, 84, 1),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(54, 73, 84, 1),
                                ))),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          //implementar esqueci senha
                          LoginController().esqueceuSenha(
                            context,
                            txtEmailEsqueceuSenha.text,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(300, 50),
                          backgroundColor: Color.fromRGBO(136, 138, 210, 1),
                        ),
                        child: Text('Redefinir senha'),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 30, 5),
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    backgroundColor: Color.fromRGBO(90, 252, 255, 0.7),
                    child: Icon(Icons.arrow_back),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
