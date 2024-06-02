// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mysquad/model/background.dart';
import 'package:mysquad/view/tela_inicio_grupos.dart';
import 'package:mysquad/view/tela_inicio_online.dart';

class TelaInicio extends StatefulWidget {
  const TelaInicio({super.key});

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Stack(
          children: [
            //PÁGINAS CHAMADAS NA ABA

            ImagemFundo(),
            TabBarView(children: [
              GruposInicio(),
              OnlineInicio(),
            ]),

            //TABS DA TELA DE INICIO
            Container(
              margin: EdgeInsets.fromLTRB(70, 10, 70, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromRGBO(0, 37, 65, 1),
              ),
              child: TabBar(
                dividerHeight: 0.0,
                isScrollable: false,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                indicator: BoxDecoration(
                    color: Color.fromRGBO(54, 73, 85, 1),
                    borderRadius: BorderRadius.circular(30)),
                tabs: [
                  Row(
                    children: [
                      Icon(Icons.diversity_3),
                      SizedBox(width: 5),
                      Text('Grupos'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.group),
                      SizedBox(width: 5),
                      Text('Online'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
