// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:mysquad/model/background.dart';
import 'package:mysquad/view/util.dart';

import '../../controller/login_controller.dart';

bool switchValue = false;
String _generoSelecionado = _generos[0];
List<String> _generos = [
  'Selecione',
  'Masculino',
  'Feminino',
  'Outro',
  'Prefiro não informar'
];

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  var txtNome = TextEditingController();
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  var txtGenero = TextEditingController();

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
                        controller: txtNome,
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
                        controller: txtEmail,
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
                        controller: txtSenha,
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
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(54, 73, 84, 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              "Gênero:",
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.5),
                              ),
                            ),
                            SizedBox(width: 10),
                            DropdownButton(
                              dropdownColor: Color.fromRGBO(54, 73, 84, 0.8),
                              underline: Container(),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(2),
                              value: _generoSelecionado,
                              items: _generos.map((genero) {
                                return DropdownMenuItem(
                                  child: Text(genero),
                                  value: genero,
                                );
                              }).toList(),
                              onChanged: (genero) {
                                setState(() {
                                  _generoSelecionado = genero!;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          if (_generoSelecionado != _generos[0]) {
                            LoginController().criarConta(
                              context,
                              txtNome.text,
                              txtEmail.text,
                              txtSenha.text,
                              _generoSelecionado,
                            );
                          } else {
                            erro(context, "Selecione um gênero.");
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(300, 50),
                          backgroundColor: Color.fromRGBO(136, 138, 210, 1),
                        ),
                        child: Text(
                          'Encontre seu Squad!',
                          style: TextStyle(color: Colors.white),
                        ),
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
