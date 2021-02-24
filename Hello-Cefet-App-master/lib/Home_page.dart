import 'package:App_Cefet/membros.dart';
import 'package:App_Cefet/AppController.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          'assets/logo.png',
          fit: BoxFit.contain,
          height: 80,
        ),
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child: ListTile(
                leading: Icon(Icons.group, color: Colors.blue[300]),
                title: Text("Membros"),
                subtitle: Text("Integrantes da equipe..."),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Membros(),
                    ),
                  );
                }),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: ListTile(
                leading: Icon(Icons.menu_book, color: Colors.blue[300]),
                title: Text("Grade Horária"),
                subtitle: Text("Disciplinas..."),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {}),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: ListTile(
                leading:
                    Icon(Icons.construction_outlined, color: Colors.blue[300]),
                title: Text("Satisfação"),
                subtitle: Text("In constrution..."),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {}),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: ListTile(
              leading: Icon(
                Icons.wb_sunny,
                color: Colors.blue[300],
              ),
              title: Text('Tema'),
              subtitle: AppController.instance.isDartTheme
                  ? Text('Escuro')
                  : Text('Claro'),
              trailing: Switch(
                  value: AppController.instance.isDartTheme,
                  onChanged: (value) {
                    AppController.instance.ChangeTheme();
                  }),
            ),
          ),
        ],
      )),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text('🎯Objetivos do nosso projeto🎯',
                    style: TextStyle(
                      color: Colors.blue[300],
                      fontSize: 20,
                    )),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                Text('''espaço onde será preenchido ↓↓'''),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
