// ignore_for_file: camel_case_types

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../model/perfil.dart';
import '../view/util.dart';
import 'login_controller.dart';

class perfilController {
  void atualizar(context, id, Perfil p) {
    FirebaseFirestore.instance
        .collection('jogadores')
        .where('uid', isEqualTo: LoginController().idUsuario())
        .get()
        .then((snapshot) {
      if (snapshot.docs.isNotEmpty) {
        var docId = snapshot.docs[0].id;
        FirebaseFirestore.instance
            .collection('jogadores')
            .doc(docId)
            .update(p.toJson())
            .then((value) => sucesso(context, 'Perfil atualizado com sucesso'))
            .catchError((e) => erro(context, 'ERRO: ${e.code.toString()}'))
            .whenComplete(() => Navigator.of(context).pop());
      }
    });
  }
}
