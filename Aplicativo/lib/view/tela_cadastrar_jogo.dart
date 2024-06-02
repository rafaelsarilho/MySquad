// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mysquad/controller/login_controller.dart';
import 'package:mysquad/model/background.dart';

bool switchValue = false;

class CadastrarJogo extends StatefulWidget {
  const CadastrarJogo({super.key});

  @override
  State<CadastrarJogo> createState() => _CadastrarJogoState();
}

class _CadastrarJogoState extends State<CadastrarJogo> {
  var txtNick = TextEditingController();
  var txtNivel = TextEditingController();
  var txtElo = TextEditingController();
  var txtInfo = TextEditingController();

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
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                ),
                //logo League of Legends
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  width: 100,
                  height: 100,
                  child: Image.asset(
                    'lib/images/league.png',
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
                      //SizedBox(height: 10),
                      TextField(
                        controller: txtNick,
                        style:
                            TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                        decoration: InputDecoration(
                            labelText: 'Nome de invocador',
                            labelStyle: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.5)),
                            prefixIcon: Icon(
                              Icons.person,
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
                      TextField(
                        controller: txtNivel,
                        style:
                            TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                        decoration: InputDecoration(
                            labelText: 'Nível',
                            labelStyle: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.5)),
                            prefixIcon: Icon(
                              Icons.gamepad,
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
                      TextField(
                        controller: txtElo,
                        style:
                            TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                        decoration: InputDecoration(
                            labelText: 'Elo',
                            labelStyle: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.5)),
                            prefixIcon: Icon(
                              Icons.move_up_rounded,
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
                      TextField(
                        controller: txtInfo,
                        maxLines: 2,
                        style:
                            TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                        decoration: InputDecoration(
                            labelText: 'Informações adicionais',
                            labelStyle: TextStyle(
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
                          LoginController().dadosLol(
                            context,
                            txtNick.text,
                            txtNivel.text,
                            txtElo.text,
                            txtInfo.text,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(300, 50),
                          backgroundColor: Color.fromRGBO(136, 138, 210, 1),
                        ),
                        child: Text('Encontre seu Squad!'),
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
