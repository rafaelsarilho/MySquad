// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, non_constant_identifier_names, unused_local_variable, no_leading_underscores_for_local_identifiers, sort_child_properties_last, use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mysquad/controller/login_controller.dart';
import 'package:mysquad/controller/perfil_controller.dart';
import 'package:mysquad/model/background.dart';

import '../controller/grupo_controller.dart';
import '../model/grupo.dart';
import '../model/perfil.dart';
import 'container_grupos.dart';

class TelaPerfil extends StatefulWidget {
  const TelaPerfil({super.key});

  @override
  State<TelaPerfil> createState() => _TelaPerfilState();
}

class _TelaPerfilState extends State<TelaPerfil> {
  var txtNick = TextEditingController();
  var txtElo = TextEditingController();
  var txtInfo = TextEditingController();
  var txtTitulo = TextEditingController();
  var txtQuantidade = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ImagemFundo(),
        Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 37, 65, 1),
                  border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 70,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset("lib/images/vladimiricon.jpg"),
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(
                        children: [
                          //FUNÇÃO PARA RETORNAR E ALTERAR NOME DO USUÁRIO
                          FutureBuilder<String>(
                            future: LoginController().usuarioLogado(),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return CircularProgressIndicator();
                              } else if (snapshot.hasError) {
                                return Text('Erro ao obter o usuário');
                              } else {
                                final usuario = snapshot.data ?? '';

                                return InkWell(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        final _novoNomeController =
                                            TextEditingController();

                                        return AlertDialog(
                                          title: Text('Alterar Nome',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          backgroundColor:
                                              Color.fromRGBO(0, 37, 65, 1),
                                          content: TextField(
                                            controller: _novoNomeController,
                                            style:
                                                TextStyle(color: Colors.white),
                                            decoration: InputDecoration(
                                              labelText: 'Novo Nome',
                                              labelStyle: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 0.5)),
                                            ),
                                          ),
                                          actions: [
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text('Fechar'),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromRGBO(
                                                    111, 67, 80, 1),
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: () async {
                                                final novoNome =
                                                    _novoNomeController.text;
                                                await LoginController()
                                                    .atualizarNomeUsuario(
                                                        novoNome);
                                                setState(() {});
                                                Navigator.of(context).pop();
                                              },
                                              child: Text('Salvar'),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromRGBO(
                                                    90, 252, 255, 0.7),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: Text(
                                    usuario,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ),
                                );
                              }
                            },
                          ),
                          SizedBox(height: 5),
                          Text(
                            '@vladimirlol',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(width: 15),
                      ElevatedButton(
                          onPressed: () {
                            //EDIÇÃO DE PERFIL

                            EditaPerfil(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(131, 128, 215, 1),
                          ),
                          child: Text(
                            'Editar',
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //FUNÇÃO PARA RETORNAR NICK
                      FutureBuilder<String>(
                        future: LoginController().NickJogador(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return CircularProgressIndicator();
                          } else if (snapshot.hasError) {
                            return Text('Erro ao obter Nickname');
                          } else {
                            final usuario = snapshot.data ?? '';
                            return Text(
                              usuario,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                              textAlign: TextAlign.center,
                            );
                          }
                        },
                      ),

                      //FUNÇÃO PARA RETORNAR ELO
                      SizedBox(width: 5),
                      FutureBuilder<String>(
                        future: LoginController().EloJogador(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return CircularProgressIndicator();
                          } else if (snapshot.hasError) {
                            return Text('Erro ao obter o elo');
                          } else {
                            final usuario = snapshot.data ?? '';
                            return Text(
                              usuario,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                              textAlign: TextAlign.center,
                            );
                          }
                        },
                      ),
                      SizedBox(width: 5),

                      //FUNÇÃO PARA RETORNAR GÊNERO
                      FutureBuilder<String>(
                        future: LoginController().GeneroJogador(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return CircularProgressIndicator();
                          } else if (snapshot.hasError) {
                            return Text('Erro ao obter o usuário');
                          } else {
                            final usuario = snapshot.data ?? '';
                            return Text(
                              usuario,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                              textAlign: TextAlign.center,
                            );
                          }
                        },
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromRGBO(190, 252, 255, 0.1)),
                      borderRadius: BorderRadius.circular(12),
                    ),

                    //FUNÇÃO PARA RETORNAR BIO
                    child: FutureBuilder<String>(
                      future: LoginController().InfoJogador(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return CircularProgressIndicator();
                        } else if (snapshot.hasError) {
                          return Text('Erro ao obter informações');
                        } else {
                          final usuario = snapshot.data ?? '';
                          return Text(
                            usuario,
                            style: TextStyle(color: Colors.white, fontSize: 14),
                            textAlign: TextAlign.center,
                          );
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Grupos',
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 500,
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 37, 65, 1),
                border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: StreamBuilder<QuerySnapshot>(
                stream: grupoController().meusgrupos().snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.none) {
                    return Center(
                      child: Text('Não foi possível conectar.'),
                    );
                  } else if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text('Erro ao carregar os dados.'),
                    );
                  } else {
                    final dados = snapshot.data!;
                    if (dados.size > 0) {
                      return SingleChildScrollView(
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: dados.size,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          itemBuilder: (context, index) {
                            String id = dados.docs[index].id;
                            dynamic item = dados.docs[index].data();
                            return Card(
                              color: Colors.transparent,
                              child: CustomContainer(
                                titulo: item['titulo'],
                                quantidade: item['quantidade'],
                                onTap: () {
                                  editaGrupo(context, docId: id);
                                },
                                visible_: true,
                              ),
                            );
                          },
                        ),
                      );
                    } else {
                      return Center(
                        child: Text(
                          'Nenhum grupo encontrado.',
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }
                  }
                },
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 20, 30, 5),
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pop(
                context,
              );
            },
            backgroundColor: Color.fromRGBO(90, 252, 255, 0.7),
            child: Icon(Icons.arrow_back),
          ),
        )
      ],
    ));
  }

  EditaPerfil(context, {docId}) {
    final txtNick = TextEditingController();
    final txtElo = TextEditingController();
    final txtInfo = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return FutureBuilder(
          future: Future.delayed(
              Duration(seconds: 2)), // Simula um Future com atraso
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return AlertDialog(
                title: Text("Editar Perfil",
                    style: TextStyle(color: Colors.white)),
                backgroundColor: Color.fromRGBO(0, 37, 65, 1),
                content: SizedBox(
                  height: 250,
                  width: 300,
                  child: Column(
                    children: [
                      TextField(
                        style:
                            TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                        controller: txtNick,
                        decoration: InputDecoration(
                          labelText: 'Nome de invocador: ',
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.5)),
                          prefixIcon: Icon(
                            Icons.group,
                            color: Colors.white,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white, // Defina a cor da borda
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        style:
                            TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                        controller: txtElo,
                        decoration: InputDecoration(
                          labelText: 'Elo: ',
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.5)),
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        style:
                            TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                        controller: txtInfo,
                        decoration: InputDecoration(
                          labelText: 'Bio: ',
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.5)),
                          hintMaxLines: 3,
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                actionsPadding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                actions: [
                  ElevatedButton(
                    child: Text(
                      "fechar",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      txtNick.clear();
                      txtElo.clear();
                      txtInfo.clear();
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(111, 67, 80, 1),
                    ),
                  ),
                  ElevatedButton(
                    child: Text("salvar"),
                    onPressed: () async {
                      var p = Perfil(
                        LoginController().idUsuario(),
                        txtElo.text,
                        txtNick.text,
                        txtInfo.text,
                      );
                      txtNick.clear();
                      txtElo.clear();
                      txtInfo.clear();

                      perfilController().atualizar(context, docId, p);
                      Future.delayed(Duration(seconds: 2)).then((_) {
                        setState(() {});
                        Navigator.of(context).pop();
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(90, 252, 255, 0.7),
                    ),
                  ),
                ],
              );
            }
          },
        );
      },
    );
  }

  void editaGrupo(context, {docId}) {
    final txtTitulo = TextEditingController();
    final txtQuantidade = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Editar grupo", style: TextStyle(color: Colors.white)),
          backgroundColor: Color.fromRGBO(0, 37, 65, 1),
          content: SizedBox(
            height: 150,
            width: 300,
            child: Column(
              children: [
                TextField(
                  controller: txtTitulo,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Título',
                    prefixIcon: Icon(Icons.description, color: Colors.white),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: txtQuantidade,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Quantidade',
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                  ),
                ),
              ],
            ),
          ),
          actionsPadding: EdgeInsets.fromLTRB(20, 0, 20, 10),
          actions: [
            TextButton(
              child: Text("fechar", style: TextStyle(color: Colors.white)),
              onPressed: () {
                txtTitulo.clear();
                txtQuantidade.clear();
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text("salvar"),
              onPressed: () {
                var g = Grupo(
                  LoginController().idUsuario(),
                  txtTitulo.text,
                  txtQuantidade.text,
                );
                txtTitulo.clear();
                txtQuantidade.clear();
                if (docId == null) {
                  grupoController().adicionar(context, g);
                } else {
                  grupoController().atualizar(context, docId, g);
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(90, 252, 255, 0.7),
              ),
            ),
          ],
        );
      },
    );
  }
}
