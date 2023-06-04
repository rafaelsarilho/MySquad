// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String titulo;
  final String quantidade;

  const CustomContainer({
    required this.titulo,
    required this.quantidade,
    required Null Function() onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(54, 73, 84, 1),
        border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
        borderRadius: BorderRadius.circular(10),

        //backgroundBlendMode: BlendMode.overlay,
      ),
      child: Column(
        children: [
          SizedBox(height: 5),
          Text(
            titulo,
            style: TextStyle(color: Colors.white, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            'Quantidade máxima: ' + quantidade,
            style: TextStyle(color: Colors.white, fontSize: 11),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(131, 128, 215, 1),
            ),
            child: Text('Entrar'),
          ),
        ],
      ),
    );
  }
}
