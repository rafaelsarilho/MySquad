// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mysquad/model/background.dart';

bool switchValue = false;

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
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
                        "Cadastre-se",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        style:
                            TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                        decoration: InputDecoration(
                            labelText: 'Nome completo',
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
                        style:
                            TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
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
                      SizedBox(height: 10),
                      TextField(
                        obscureText: true,
                        style:
                            TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
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
                      SizedBox(height: 10),
                      TextField(
                        obscureText: true,
                        style:
                            TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                        decoration: InputDecoration(
                            labelText: 'Digite novamente sua senha',
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
                      SizedBox(height: 10),
                      TextField(
                        style:
                            TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                        decoration: InputDecoration(
                            labelText: 'Gênero',
                            labelStyle: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.5)),
                            prefixIcon: Icon(
                              Icons.person_3_outlined,
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
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Text(
                              "Deseja informar sua localização aproximada?",
                              style: TextStyle(color: Colors.white),
                              softWrap: true,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.1,
                            child: Switch(
                              value: switchValue,
                              activeColor: Color.fromRGBO(129, 131, 199, 1),
                              inactiveThumbColor:
                                  Color.fromRGBO(170, 122, 162, 1),
                              onChanged: (value) {
                                setState(() {
                                  switchValue = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {},
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
