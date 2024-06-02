// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mysquad/view/tela_amigos.dart';
import 'package:mysquad/view/tela_config.dart';
import 'package:mysquad/view/tela_inicial.dart';

class BottomNavigationView extends StatefulWidget {
  const BottomNavigationView({super.key});

  @override
  State<BottomNavigationView> createState() => _BottomNavigationViewState();
}

class _BottomNavigationViewState extends State<BottomNavigationView> {
  var pageIndex = 0;
  var pageController = PageController();
  String tituloAppBar = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromRGBO(0, 53, 63, 1),
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'perfil');
                },
                child: SizedBox(
                    width: 30, child: Image.asset("lib/images/logomy.png"))),
            Text(
              tituloAppBar,
              style: TextStyle(color: Colors.white),
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
      body: PageView(
        controller: pageController,
        children: [
          TelaInicio(),
          TelaAmigos(),
          TelaConfig(),
        ],
        onPageChanged: (index) {
          setState(() {
            pageIndex = index;
            switch (pageIndex) {
              case 0:
                tituloAppBar = "Home";
                break;
              case 1:
                tituloAppBar = "Amigos";
                break;
              case 2:
                tituloAppBar = "Configurações";
                break;
            }
          });
        },
      ),
      bottomNavigationBar: SizedBox(
        //height: MediaQuery.of(context).size.height *
        //0.1, // Defina a altura desejada
        child: BottomNavigationBar(
          elevation: 0,
          currentIndex: pageIndex,
          backgroundColor: Color.fromRGBO(0, 53, 63, 1),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white24,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.gamepad),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: 'Amigos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Configurações',
            ),
          ],
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
            pageController.animateToPage(
              index,
              duration: Duration(milliseconds: 200),
              curve: Curves.easeIn,
            );
          },
        ),
      ),
    );
  }
}
