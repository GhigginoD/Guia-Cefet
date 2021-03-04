import 'package:App_Cefet/AppController.dart';
import 'package:App_Cefet/Rede_social.dart';
import 'package:App_Cefet/Sobre_curso.dart';
import 'package:flutter/cupertino.dart';
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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: AppBar(
            elevation: 0,
            centerTitle: true,
            title: Text(
              'Sobre',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            Container(
              height: 90,
              child: DrawerHeader(
                child: ListTile(
                  leading: Icon(Icons.reorder),
                  title: Text('Menu'),
                ),
                decoration: BoxDecoration(
                  color: Colors.cyan,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: ListTile(
                  leading: Icon(Icons.home, color: Colors.blue[300]),
                  title: Text("Inicio"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  }),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: ListTile(
                  leading: Icon(Icons.input, color: Colors.blue[300]),
                  title: Text("Entrar no Portal"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  }),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: ListTile(
                  leading: Icon(Icons.menu_book, color: Colors.blue[300]),
                  title: Text("Sobre os Cursos"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sobre_cursos(),
                      ),
                    );
                  }),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: ListTile(
                  leading: Icon(Icons.group, color: Colors.blue[300]),
                  title: Text("Redes Sociais"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => Redes_sociais(),
                        ),
                    );
                  }),
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
          width: double.infinity,
          margin: EdgeInsets.only(left: 20.0, right: 20, bottom: 10, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'A Instituição',
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                height: 200,
                width: 400,
                margin: EdgeInsets.all(35),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white70,
                    boxShadow: [BoxShadow(color: Colors.blue)],
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  'A instituição Cefet foi fundada em 1917 originalmente como uma escola comum e posteriormente em 1934 foi transformada em uma escola técnica.',
                  style: TextStyle(color: Colors.black54, fontSize: 20),
                ),
              ),
              Text('Cursos disponíveis',
                  style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              Container(
                height: 85,
                width: 350,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [BoxShadow(color: Colors.blue)],
                ),
                  child: Row(
                    children: [
                      ListView(children: [Text('info'),Text('elt')],),
                    ],
                  ),
              ),
              SizedBox(height: 30),
              Text('Unidades',
                  style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ));
  }
}
