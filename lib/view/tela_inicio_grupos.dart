// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GruposInicio extends StatefulWidget {
  const GruposInicio({Key? key}) : super(key: key);

  @override
  State<GruposInicio> createState() => _GruposInicioState();
}

class _GruposInicioState extends State<GruposInicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //Decoração do container principal
      padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
      margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(0, 37, 65, 1),
          border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
          borderRadius: BorderRadius.circular(12)),
      child: GridView.count(
        crossAxisCount: 2, // Quantidade de colunas
        mainAxisSpacing: 30, // Espaçamento vertical
        crossAxisSpacing: 30, // Espaçamento horizontal
        children: [
          //CONTEUDO DA GRIDVIEW

          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(54, 73, 84, 1),
                border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                SizedBox(height: 5),
                Text(
                  'Grupo do Aramzin',
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
                      backgroundColor: Color.fromRGBO(131, 128, 215, 1),
                    ),
                    child: Text('Entrar'))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(54, 73, 84, 1),
                border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                SizedBox(height: 5),
                Text(
                  'Bora duo platina',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  '1/2 players',
                  style: TextStyle(color: Colors.white, fontSize: 11),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(131, 128, 215, 1),
                    ),
                    child: Text('Entrar'))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(54, 73, 84, 1),
                border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                SizedBox(height: 5),
                Text(
                  'Orfãos do URF',
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
                      backgroundColor: Color.fromRGBO(131, 128, 215, 1),
                    ),
                    child: Text('Entrar'))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(54, 73, 84, 1),
                border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                SizedBox(height: 5),
                Text(
                  'Builds conceito',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  '2/5 players',
                  style: TextStyle(color: Colors.white, fontSize: 11),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(131, 128, 215, 1),
                    ),
                    child: Text('Entrar'))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(54, 73, 84, 1),
                border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                SizedBox(height: 5),
                Text(
                  'Só mulheres aqui',
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
                      backgroundColor: Color.fromRGBO(131, 128, 215, 1),
                    ),
                    child: Text('Entrar'))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(54, 73, 84, 1),
                border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                SizedBox(height: 5),
                Text(
                  'Bora custom',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  '7/10 players',
                  style: TextStyle(color: Colors.white, fontSize: 11),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(131, 128, 215, 1),
                    ),
                    child: Text('Entrar'))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(54, 73, 84, 1),
                border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                SizedBox(height: 5),
                Text(
                  'A sigla LTBTQIA+',
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
                      backgroundColor: Color.fromRGBO(131, 128, 215, 1),
                    ),
                    child: Text('Entrar'))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(54, 73, 84, 1),
                border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                SizedBox(height: 5),
                Text(
                  'Vem nordeste!',
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
                      backgroundColor: Color.fromRGBO(131, 128, 215, 1),
                    ),
                    child: Text('Entrar'))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(54, 73, 84, 1),
                border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                SizedBox(height: 5),
                Text(
                  'Duo Ferro 3',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  '1/2 players',
                  style: TextStyle(color: Colors.white, fontSize: 11),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(131, 128, 215, 1),
                    ),
                    child: Text('Entrar'))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(54, 73, 84, 1),
                border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                SizedBox(height: 5),
                Text(
                  'Só Challenger',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  '2/5 players',
                  style: TextStyle(color: Colors.white, fontSize: 11),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(131, 128, 215, 1),
                    ),
                    child: Text('Entrar'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
