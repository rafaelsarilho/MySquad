// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String titulo;
  final String quantidade;
  final VoidCallback onTap;
  final bool visible_;

  const CustomContainer({
    required this.titulo,
    required this.quantidade,
    required this.onTap,
    required this.visible_,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(54, 73, 84, 1),
        border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          SizedBox(height: 5),
          Text(
            titulo,
            style: TextStyle(color: Colors.white, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          //SizedBox(height: 10),
          Text(
            'Quantidade máxima: $quantidade',
            style: TextStyle(color: Colors.white, fontSize: 11),
            textAlign: TextAlign.center,
          ),
          //SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(131, 128, 215, 1),
            ),
            child: Text(
              'Entrar',
              style: TextStyle(
                  color: Colors.grey[300], fontWeight: FontWeight.bold),
            ),
          ),
          //SizedBox(height: 10),
          Visibility(
            visible: visible_,
            child: ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(255, 111, 145, 1),
              ),
              child: Text('Editar'),
            ),
          ),
        ],
      ),
    );
  }
}
