// ignore_for_file: camel_case_types, unused_import

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/grupo.dart';
import '../view/util.dart';
import 'login_controller.dart';

class grupoController {
  void adicionar(context, Grupo g) {
    FirebaseFirestore.instance
        .collection('grupos')
        .add(g.toJson())
        .then((value) => sucesso(context, 'Grupo adicionado com sucesso'))
        .catchError((e) => erro(context, 'ERRO: ${e.code.toString()}'))
        .whenComplete(() => Navigator.of(context).pop());
  }

  void atualizar(context, id, Grupo g) {
    FirebaseFirestore.instance
        .collection('grupos')
        .doc(id)
        .update(g.toJson())
        .then((value) => sucesso(context, 'Grupo atualizado com sucesso'))
        .catchError((e) => erro(context, 'ERRO: ${e.code.toString()}'))
        .whenComplete(() => Navigator.of(context).pop());
  }

  listar() {
    return FirebaseFirestore.instance
        .collection('grupos')
        .orderBy('titulo', descending: false);
  }

  meusgrupos() {
    return FirebaseFirestore.instance
        .collection('grupos')
        .where('uid', isEqualTo: LoginController().idUsuario())
        .orderBy('titulo', descending: false);
  }
}
