// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mysquad/model/background.dart';

import '../../controller/login_controller.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  var txtEmailEsqueceuSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //imagem de background
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
                      SizedBox(height: 10),

                      //login do google
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(300, 50),
                          backgroundColor: Color.fromRGBO(199, 72, 58, 1),
                        ),
                        child: Text(
                          'Login com Google',
                          style: TextStyle(
                            color: Colors
                                .white, // Definindo a cor do texto como branca
                          ),
                        ),
                      ),

                      SizedBox(height: 10),

                      //login do facebook
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(300, 50),
                          backgroundColor: Color.fromRGBO(4, 75, 133, 1),
                        ),
                        child: Text(
                          'Login com Facebook',
                          style: TextStyle(
                            color: Colors
                                .white, // Definindo a cor do texto como branca
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      /*
                      //login do twitter
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(300, 50),
                          backgroundColor: Colors.blue,
                        ),
                        child: Text('Login com Twitter'),
                      ),
                      */
                      //SizedBox(height: 20),

                      //login e-mail e senha
                      Text(
                        "Entre com seu e-mail:",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 5),

                      //campo e-mail
                      SizedBox(
                        width: 300,
                        height: 50,
                        child: TextField(
                          controller: txtEmail,
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 13,
                          ),
                          decoration: InputDecoration(
                              labelText: 'E-mail',
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
                      ),
                      SizedBox(height: 10),

                      //campo senha
                      SizedBox(
                        width: 300,
                        height: 50,
                        child: TextField(
                          controller: txtSenha,
                          obscureText: true,
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 13,
                          ),
                          decoration: InputDecoration(
                              labelText: 'Senha',
                              labelStyle: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 0.5)),
                              prefixIcon: Icon(
                                Icons.password_outlined,
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
                      ),
                      SizedBox(height: 10),

                      //botão entrar
                      ElevatedButton(
                        onPressed: () {
                          // implementar login firebase
                          LoginController().login(
                            context,
                            txtEmail.text,
                            txtSenha.text,
                          );
                          //Navigator.pushNamed(context, 'cadastrojogo');
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(300, 50),
                          backgroundColor: Color.fromRGBO(54, 73, 84, 1),
                        ),
                        child: Text(
                          'Entrar',
                          style: TextStyle(
                            color: Colors
                                .white, // Definindo a cor do texto como branca
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      GestureDetector(
                        child: Text(
                          "Esqueceu sua senha? Clique Aqui",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, 'esqueci');
                        },
                      ),
                      SizedBox(height: 15),

                      Text(
                        "Novo aqui?",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 5),

                      //botão cadastre-se
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            'cadastro',
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(300, 50),
                          backgroundColor: Color.fromRGBO(24, 76, 98, 1),
                        ),
                        child: Text(
                          'Cadastre-se',
                          style: TextStyle(
                            color: Colors
                                .white, // Definindo a cor do texto como branca
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
