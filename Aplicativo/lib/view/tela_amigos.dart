// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:mysquad/model/background.dart';

class TelaAmigos extends StatefulWidget {
  const TelaAmigos({super.key});

  @override
  State<TelaAmigos> createState() => _TelaAmigosState();
}

class _TelaAmigosState extends State<TelaAmigos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ImagemFundo(),
        Container(
          color: Color.fromRGBO(0, 0, 0, 0.2),
        ),
        ListView(
          children: [
            Column(
              children: [
                CardAmigo(nome: "Syndra", level: "235", rank: "Platina"),
                CardAmigo(nome: "Warwick", level: "132", rank: "Ouro"),
                CardAmigo(nome: "Lissandra", level: "65", rank: "Ouro"),
                CardAmigo(nome: "Garen", level: "24", rank: "Prata"),
                CardAmigo(nome: "Zed", level: "769", rank: "Bronze"),
                CardAmigo(nome: "Ashe", level: "55", rank: "Prata"),
                CardAmigo(nome: "Blitzcrank", level: "4", rank: "Platina"),
              ],
            ),
          ],
        )
      ],
    ));
  }
}

class CardAmigo extends StatelessWidget {
  String nome = "";
  String level = "";
  String rank = "";

  CardAmigo({required this.nome, required this.level, required this.rank});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color.fromRGBO(54, 73, 84, 1),
      ),
      margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: CircleAvatar(
              radius: 35,
              child: Icon(
                Icons.person,
                size: 48,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Row(children: [
                Text(
                  nome,
                  style: TextStyle(
                      color: Colors.white, fontFamily: "Roboto", fontSize: 20),
                )
              ]),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "Rank: $rank",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Level: $level",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w200),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
