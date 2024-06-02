// ignore_for_file: prefer_const_constructors, unused_local_variable, sort_child_properties_last

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mysquad/controller/grupo_controller.dart';
import 'package:mysquad/view/container_grupos.dart';

import '../controller/login_controller.dart';
import '../model/grupo.dart';

class GruposInicio extends StatefulWidget {
  const GruposInicio({super.key});

  @override
  State<GruposInicio> createState() => _GruposInicioState();
}

class _GruposInicioState extends State<GruposInicio> {
  var txtTitulo = TextEditingController();
  var txtQuantidade = TextEditingController();
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
          child: StreamBuilder<QuerySnapshot>(
            stream: grupoController().listar().snapshots(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Center(
                    child: Text('Não foi possível conectar.'),
                  );
                case ConnectionState.waiting:
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                default:
                  final dados = snapshot.requireData;
                  if (dados.size > 0) {
                    //CONTEUDO DA GRIDVIEW
                    return GridView.builder(
                      itemCount: dados.size,
                      itemBuilder: (context, index) {
                        String id = dados.docs[index].id;
                        dynamic item = dados.docs[index].data();
                        return Card(
                          color: Colors.transparent,
                          child: CustomContainer(
                            titulo: item['titulo'],
                            quantidade: item['quantidade'],
                            onTap: () {},
                            visible_: false,
                          ),
                        );
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                    );
                  } else {
                    return Center(
                      child: Text(
                        'Nenhuma grupo encontrado.',
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  }
              }
            },
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 20, 30, 5),
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            onPressed: () {
              novoGrupo(context);
            },
            backgroundColor: Color.fromRGBO(90, 252, 255, 0.7),
            child: Icon(Icons.add),
          ),
        )
      ],
    );
  }

  novoGrupo(context, {docId}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // retorna um objeto do tipo Dialog
        return AlertDialog(
          title: Text("Adicionar Grupo", style: TextStyle(color: Colors.white)),
          backgroundColor: Color.fromRGBO(0, 37, 65, 1),
          content: SizedBox(
            height: 150,
            width: 300,
            child: Column(
              children: [
                TextField(
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                  controller: txtTitulo,
                  decoration: InputDecoration(
                    labelText: 'Título',
                    labelStyle:
                        TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5)),
                    prefixIcon: Icon(
                      Icons.group,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white, // Defina a cor da borda
                      ),
                      borderRadius: BorderRadius.circular(
                          10), // Defina o raio das quinas da borda
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                  controller: txtQuantidade,
                  decoration: InputDecoration(
                    labelText: 'Quantidade máxima de players',
                    labelStyle:
                        TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5)),
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          actionsPadding: EdgeInsets.fromLTRB(20, 0, 20, 10),
          actions: [
            TextButton(
              child: Text(
                "fechar",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                txtTitulo.clear();
                txtQuantidade.clear();
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text("salvar"),
              onPressed: () {
                var t = Grupo(
                  LoginController().idUsuario(),
                  txtTitulo.text,
                  txtQuantidade.text,
                );
                txtTitulo.clear();
                txtQuantidade.clear();
                if (docId == null) {
                  //
                  // ADICIONAR TAREFA
                  //
                  grupoController().adicionar(context, t);
                } else {
                  //
                  // ATUALIZAR TAREFA
                  //
                  grupoController().atualizar(context, docId, t);
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
