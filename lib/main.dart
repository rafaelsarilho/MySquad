// ignore_for_file: prefer_const_constructors, unused_import, depend_on_referenced_packages

//import 'dart:js';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:mysquad/model/navigation_bar.dart';
import 'package:mysquad/view/login/tela_esquecisenha.dart';
import 'package:mysquad/view/perfil.dart';
import 'package:mysquad/view/tela_cadastrar_jogo.dart';
import 'package:mysquad/view/tela_inicial.dart';
import 'package:mysquad/view/tela_config.dart';
import 'package:mysquad/view/tela_inicio_grupos.dart';
import 'package:mysquad/view/tela_amigos.dart';
import 'view/login/tela_login.dart';
import 'view/login/tela_cadastro.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(DevicePreview(
    enabled: false,
    builder: (context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      title: 'MySquad',
      initialRoute: 'login',
      routes: {
        'login': (context) => TelaLogin(),
        'cadastro': (context) => TelaCadastro(),
        'esqueci': (context) => TelaEsqueci(),
        'inicio': (context) => BottomNavigationView(),
        'home': (context) => TelaInicio(),
        'amigos': (context) => TelaAmigos(),
        'config': (context) => TelaConfig(),
        'grupos': (context) => GruposInicio(),
        'cadastrojogo': (context) => CadastrarJogo(),
        'perfil': (context) => TelaPerfil(),
      },
    ),
  ));
}
