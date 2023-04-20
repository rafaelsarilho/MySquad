// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:mysquad/model/background.dart';

class TelaPerfil extends StatefulWidget {
  const TelaPerfil({super.key});

  @override
  State<TelaPerfil> createState() => _TelaPerfilState();
}

class _TelaPerfilState extends State<TelaPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ImagemFundo(),
        Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 37, 65, 1),
                  border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 70,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset("lib/images/vladimiricon.jpg"),
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(
                        children: [
                          Text(
                            'Vladimir 🧛',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 5),
                          Text(
                            '@vladimirlol',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(width: 15),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(131, 128, 215, 1),
                          ),
                          child: Text('Editar')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ele/Dele',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Runeterra',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '135 anos',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromRGBO(190, 252, 255, 0.1)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Gosto de jogar pela madrugada, tenho hábitos noturnos, rs\nMe chama para jogar!\nAh, sou de Noxus - Runeterra.',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Grupos',
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
              margin: EdgeInsets.fromLTRB(20, 0, 20, 50),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 37, 65, 1),
                  border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
                  borderRadius: BorderRadius.circular(12)),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 30,
                mainAxisSpacing: 30,
                shrinkWrap: true,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(54, 73, 84, 1),
                        border: Border.all(
                            color: Color.fromRGBO(190, 252, 255, 0.5)),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        SizedBox(height: 5),
                        Text(
                          'Aramzada',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '3/5 players',
                          style: TextStyle(color: Colors.white, fontSize: 11),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(111, 67, 80, 1),
                            ),
                            child: Text('Sair'))
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(54, 73, 84, 1),
                        border: Border.all(
                            color: Color.fromRGBO(190, 252, 255, 0.5)),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        SizedBox(height: 5),
                        Text(
                          'Platinar',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '0/2 players',
                          style: TextStyle(color: Colors.white, fontSize: 11),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(111, 67, 80, 1),
                            ),
                            child: Text('Sair'))
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(54, 73, 84, 1),
                        border: Border.all(
                            color: Color.fromRGBO(190, 252, 255, 0.5)),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        SizedBox(height: 5),
                        Text(
                          'GG Ferro',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '4/5 players',
                          style: TextStyle(color: Colors.white, fontSize: 11),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(111, 67, 80, 1),
                            ),
                            child: Text('Sair'))
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(54, 73, 84, 1),
                        border: Border.all(
                            color: Color.fromRGBO(190, 252, 255, 0.5)),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        SizedBox(height: 5),
                        Text(
                          'Gerenciar',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Mais grupos',
                          style: TextStyle(color: Colors.white, fontSize: 11),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(111, 67, 80, 1),
                            ),
                            child: Text('Entrar'))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
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
    ));
  }
}
