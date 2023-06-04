// ignore_for_file: camel_case_types

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
        .then((value) => sucesso(context, 'Grupo adicionada com sucesso'))
        .catchError((e) => erro(context, 'ERRO: ${e.code.toString()}'))
        .whenComplete(() => Navigator.of(context).pop());
  }

  void atualizar(context, id, Grupo t) {
    FirebaseFirestore.instance
        .collection('grupos')
        .doc(id)
        .update(t.toJson())
        .then((value) => sucesso(context, 'Tarefa atualizada com sucesso'))
        .catchError((e) => erro(context, 'ERRO: ${e.code.toString()}'))
        .whenComplete(() => Navigator.of(context).pop());
  }

  listar() {
    return FirebaseFirestore.instance
        .collection('grupos')
        .where('uid', isEqualTo: LoginController().idUsuario());
  }
}
