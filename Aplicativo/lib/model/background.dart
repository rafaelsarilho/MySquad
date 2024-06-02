import 'dart:ui';
import 'package:flutter/material.dart';

class ImagemFundo extends StatelessWidget {
  final Widget? child; // torna o parâmetro child opcional com '?'

  const ImagemFundo({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //imagem de background
        Image.asset(
          'lib/images/background.jpg',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            color: const Color.fromRGBO(0, 53, 63, 0.7),
            width: double.infinity,
            height: double.infinity,
          ),
        ),

        if (child != null)
          child!, // utiliza o operador 'if' para adicionar o child somente se não for nulo
      ],
    );
  }
}
