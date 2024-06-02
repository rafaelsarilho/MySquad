// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mysquad/model/background.dart';

import '../controller/login_controller.dart';

bool _switchNotificacaoPopUp = true;
String _idiomaSelecionado = _idiomas[0];
List<String> _idiomas = ['Português', 'Inglês'];

class TelaConfig extends StatefulWidget {
  const TelaConfig({super.key});

  @override
  State<TelaConfig> createState() => _TelaConfigState();
}

class _TelaConfigState extends State<TelaConfig> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ImagemFundo(),
          Container(
            color: Color.fromRGBO(0, 0, 0, 0.3),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(54, 73, 84, 1))),
                    onPressed: () {
                      setState(() {
                        _switchNotificacaoPopUp = !_switchNotificacaoPopUp;
                      });
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Receber Notificações Push',
                            style: TextStyle(color: Colors.white),
                          ),
                          Switch(
                              activeColor: Color.fromRGBO(131, 128, 215, 1),
                              inactiveThumbColor: Colors.grey,
                              value: _switchNotificacaoPopUp,
                              onChanged: (bool value) {
                                setState(() {
                                  _switchNotificacaoPopUp = value;
                                });
                              }),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(54, 73, 84, 1),
                      borderRadius: BorderRadius.circular(5)),
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Idioma",
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: Color.fromRGBO(0, 0, 0, 0.2))),
                          child: DropdownButton(
                            dropdownColor: Color.fromRGBO(54, 73, 84, 0.8),
                            underline: Container(),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(2),
                            value: _idiomaSelecionado,
                            items: _idiomas.map((idioma) {
                              return DropdownMenuItem(
                                child: Text(idioma),
                                value: idioma,
                              );
                            }).toList(),
                            onChanged: (idioma) {
                              setState(() {
                                _idiomaSelecionado = idioma!;
                              });
                            },
                          ),
                        ),
                      ]),
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {
                LoginController().logout();
                Navigator.pushReplacementNamed(context, 'login');
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(300, 50),
                backgroundColor: Color.fromRGBO(24, 76, 98, 1),
              ),
              child: Text(
                'Sair',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.fromLTRB(8, 8, 8, 10),
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.3)),
                borderRadius: BorderRadius.circular(2),
                color: Color.fromRGBO(54, 73, 84, 1),
              ),
              child: Column(
                children: [
                  Text(
                    "Desenvolvido por:\nLuiz Antonio Machado Romano\nRafael Soares Sarilho\n\nVersão: 0.0",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      color: Color.fromRGBO(255, 255, 255, 0.8),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
