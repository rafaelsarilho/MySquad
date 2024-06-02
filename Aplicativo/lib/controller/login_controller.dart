// ignore_for_file: invalid_return_type_for_catch_error, avoid_print, non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../view/util.dart';

class LoginController {
  //
  // Criação de um nova conta de usuário
  // no Firebase Authentication
  //

  criarConta(context, nome, email, senha, genero) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
      email: email,
      password: senha,
    )
        .then((resultado) {
      //Conta Criada com Sucesso
      FirebaseFirestore.instance.collection('usuarios').add({
        'uid': resultado.user!.uid,
        'nome': nome,
        'genero': genero,
      });

      sucesso(context, 'Usuário criado com sucesso.');
      Navigator.pop(context);
    }).catchError((e) {
      //Não foi possível criar a conta
      switch (e.code) {
        case 'email-already-in-use':
          erro(context, 'O email já foi cadastrado.');
          break;
        case 'invalid-email':
          erro(context, 'O formato do email é inválido.');
          break;
        default:
          erro(context, 'ERRO: ${e.code.toString()}');
      }
    });
  }

  //
  // LOGIN
  // Efetuar o login de um usuário previamente cadastrado
  // no serviço Firebase Authentication
  //
  login(context, email, senha) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: senha)
        .then((resultado) {
      sucesso(context, 'Usuário autenticado com sucesso.');
      FirebaseFirestore.instance
          .collection('jogadores')
          .where('uid', isEqualTo: resultado.user!.uid)
          .get()
          .then(
        (jogador) {
          if (jogador.size == 0) {
            Navigator.pushNamed(context, 'cadastrojogo');
          } else {
            Navigator.pushNamed(context, 'inicio');
          }
        },
      ).catchError((e) => print('ERRO: ${e.toString()}'));
    }).catchError((e) {
      switch (e.code) {
        case 'invalid-email':
          erro(context, 'O formato do email é inválido.');
          break;
        case 'user-not-found':
          erro(context, 'Usuário não encontrado.');
          break;
        case 'wrong-password':
          erro(context, 'Senha incorreta.');
          break;
        default:
          erro(context, 'ERRO: ${e.code.toString()}');
      }
    });
  }

  //
  // ESQUECEU A SENHA
  // Envia uma mensagem de email para recuperação de senha para
  // um conta de email válida
  //
  esqueceuSenha(context, String email) {
    if (email.isNotEmpty) {
      FirebaseAuth.instance.sendPasswordResetEmail(
        email: email,
      );
      sucesso(context, 'Email enviado com sucesso.');
    } else {
      erro(context, 'Informe o email para recuperar a conta.');
    }
    Navigator.pop(context);
  }

// LOGOUT
  logout() {
    FirebaseAuth.instance.signOut();
  }

  //
  // ID do Usuário Logado
  //
  idUsuario() {
    return FirebaseAuth.instance.currentUser!.uid;
  }

  //
  // NOME do Usuário Logado
  //
  Future<String> usuarioLogado() async {
    var usuario = '';
    await FirebaseFirestore.instance
        .collection('usuarios')
        .where('uid', isEqualTo: idUsuario())
        .get()
        .then(
      (resultado) {
        usuario = resultado.docs[0].data()['nome'] ?? '';
      },
    );
    return usuario;
  }

  dadosLol(context, nick, nivel, elo, info) {
    FirebaseFirestore.instance.collection('jogadores').add({
      'uid': idUsuario(),
      'nick': nick,
      'elo': elo,
      'info': info,
    }).whenComplete(() =>
        Navigator.pushNamedAndRemoveUntil(context, 'inicio', (route) => false));
  }

  Future<String> EloJogador() async {
    var elo = '';
    await FirebaseFirestore.instance
        .collection('jogadores')
        .where('uid', isEqualTo: idUsuario())
        .get()
        .then(
      (resultado) {
        elo = resultado.docs[0].data()['elo'] ?? '';
      },
    );
    return elo;
  }

  Future<String> NickJogador() async {
    var nick = '';
    await FirebaseFirestore.instance
        .collection('jogadores')
        .where('uid', isEqualTo: idUsuario())
        .get()
        .then(
      (resultado) {
        nick = resultado.docs[0].data()['nick'] ?? '';
      },
    );
    return nick;
  }

  Future<String> GeneroJogador() async {
    var genero = '';
    await FirebaseFirestore.instance
        .collection('usuarios')
        .where('uid', isEqualTo: idUsuario())
        .get()
        .then(
      (resultado) {
        genero = resultado.docs[0].data()['genero'] ?? '';
      },
    );
    return genero;
  }

    Future<String> InfoJogador() async {
    var info = '';
    await FirebaseFirestore.instance
        .collection('jogadores')
        .where('uid', isEqualTo: idUsuario())
        .get()
        .then(
      (resultado) {
        info = resultado.docs[0].data()['info'] ?? '';
      },
    );
    return info;
  }

Future<void> atualizarNomeUsuario(String novoNome) async {
    try {
      final uid = idUsuario();

      await FirebaseFirestore.instance
          .collection('usuarios')
          .where('uid', isEqualTo: uid)
          .get()
          .then((resultado) {
        if (resultado.docs.isNotEmpty) {
          final docId = resultado.docs[0].id;

          FirebaseFirestore.instance
              .collection('usuarios')
              .doc(docId)
              .update({'nome': novoNome});
        }
      });
    } catch (error) {
      // Trate o erro conforme sua necessidade
      print('Erro ao atualizar o nome do usuário: $error');
    }
  }
}
