// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mysquad/view/container_grupos.dart';

class GruposInicio extends StatefulWidget {
  const GruposInicio({Key? key}) : super(key: key);

  @override
  State<GruposInicio> createState() => _GruposInicioState();
}

class _GruposInicioState extends State<GruposInicio> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          //Decoração do container principal
          padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
          margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 37, 65, 1),
            border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
            borderRadius: BorderRadius.circular(12),
          ),
          child: GridView.count(
            crossAxisCount: 2, // Quantidade de colunas
            mainAxisSpacing: 30, // Espaçamento vertical
            crossAxisSpacing: 30, // Espaçamento horizontal
            children: [
              //CONTEUDO DA GRIDVIEW
              CustomContainer(
                titulo: 'Adicionar novo grupo',
                quantidade: '',
                botao: 'Adicionar',
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 20, 30, 5),
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color.fromRGBO(90, 252, 255, 0.7),
            child: Icon(Icons.add),
          ),
        )
      ],
    );
  }
}
