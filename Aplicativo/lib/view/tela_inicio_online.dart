// ignore_for_file: prefer_const_constructors, unused_field

import 'package:flutter/material.dart';

class OnlineInicio extends StatefulWidget {
  const OnlineInicio({super.key});

  @override
  State<OnlineInicio> createState() => _OnlineInicioState();
}

class _OnlineInicioState extends State<OnlineInicio> {
  String _selectedFilter = 'Todos';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
      margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(0, 37, 65, 1),
          border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
          borderRadius: BorderRadius.circular(12)),
      child: ListView(
        children: [
          //CONTEUDO DA LISTVIEW

          // Botão de filtro
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Filtrar por:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                PopupMenuButton<String>(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  color: Color.fromRGBO(0, 37, 65, 1),
                  onSelected: (String value) {
                    setState(() {
                      _selectedFilter = value;
                    });
                  },
                  itemBuilder: (BuildContext context) {
                    return <PopupMenuEntry<String>>[
                      PopupMenuItem<String>(
                        value: 'Todos',
                        child: Text(
                          'Todos',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Normal Game',
                        child: Text(
                          'Normal Game',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Aram',
                        child: Text(
                          'Aram',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Custom',
                        child: Text(
                          'Custom',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Ranked',
                        child: Text(
                          'Ranked',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ];
                  },
                ),
              ],
            ),
          ),

          //Pessoas online

          Container(
            margin: EdgeInsets.fromLTRB(2, 5, 5, 2),
            decoration: BoxDecoration(
                color: Color.fromRGBO(54, 73, 84, 0.1),
                border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
                borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              contentPadding: EdgeInsets.fromLTRB(5, 10, 5, 10),
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                'Taric 🏳️‍🌈',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 10),
                margin: EdgeInsets.fromLTRB(30, 2, 30, 2),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(131, 128, 215, 1),
                    ),
                    child: Text(
                      'Ver perfil',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Color.fromRGBO(131, 128, 215, 1),
                ),
                onPressed: () {},
              ),
              onTap: () {},
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(2, 5, 5, 2),
            decoration: BoxDecoration(
                color: Color.fromRGBO(54, 73, 84, 0.1),
                border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
                borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              contentPadding: EdgeInsets.fromLTRB(5, 10, 5, 10),
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                'Draven',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 10),
                margin: EdgeInsets.fromLTRB(30, 2, 30, 2),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(131, 128, 215, 1),
                    ),
                    child: Text(
                      'Ver perfil',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Color.fromRGBO(131, 128, 215, 1),
                ),
                onPressed: () {},
              ),
              onTap: () {},
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(2, 5, 5, 2),
            decoration: BoxDecoration(
                color: Color.fromRGBO(54, 73, 84, 0.1),
                border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
                borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              contentPadding: EdgeInsets.fromLTRB(5, 10, 5, 10),
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                'Soraka',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 10),
                margin: EdgeInsets.fromLTRB(30, 2, 30, 2),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(131, 128, 215, 1),
                    ),
                    child: Text(
                      'Ver perfil',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Color.fromRGBO(131, 128, 215, 1),
                ),
                onPressed: () {},
              ),
              onTap: () {},
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(2, 5, 5, 2),
            decoration: BoxDecoration(
                color: Color.fromRGBO(54, 73, 84, 0.1),
                border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
                borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              contentPadding: EdgeInsets.fromLTRB(5, 10, 5, 10),
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                'Ivern',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 10),
                margin: EdgeInsets.fromLTRB(30, 2, 30, 2),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(131, 128, 215, 1),
                    ),
                    child: Text(
                      'Ver perfil',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Color.fromRGBO(131, 128, 215, 1),
                ),
                onPressed: () {},
              ),
              onTap: () {},
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(2, 5, 5, 2),
            decoration: BoxDecoration(
                color: Color.fromRGBO(54, 73, 84, 0.1),
                border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
                borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              contentPadding: EdgeInsets.fromLTRB(5, 10, 5, 10),
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                'Jhin',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 10),
                margin: EdgeInsets.fromLTRB(30, 2, 30, 2),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(131, 128, 215, 1),
                    ),
                    child: Text(
                      'Ver perfil',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Color.fromRGBO(131, 128, 215, 1),
                ),
                onPressed: () {},
              ),
              onTap: () {},
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(2, 5, 5, 2),
            decoration: BoxDecoration(
                color: Color.fromRGBO(54, 73, 84, 0.1),
                border: Border.all(color: Color.fromRGBO(190, 252, 255, 0.5)),
                borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              contentPadding: EdgeInsets.fromLTRB(5, 10, 5, 10),
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                'Sivir',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 10),
                margin: EdgeInsets.fromLTRB(30, 2, 30, 2),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(131, 128, 215, 1),
                    ),
                    child: Text(
                      'Ver perfil',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Color.fromRGBO(131, 128, 215, 1),
                ),
                onPressed: () {},
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
