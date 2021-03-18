import 'package:flutter/material.dart';

class Sobre_cursos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: AppBar(
              backgroundColor: Colors.blue[400],
              elevation: 0,
              centerTitle: true,
              title: Text('Sobre os cursos',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)))),
      body: Container(
        padding: EdgeInsets.all(40),
        width: double.infinity,
        child: ListView(
          children: <Widget>[
            Text(
              "Cursos técnicos disponíveis na unidade do Cefet Maracanã:",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Colors.lightBlue[200])]),
              child: TextButton(
                child: Text('Informática', textAlign: TextAlign.center),
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontStyle: FontStyle.italic)),
                onPressed: () {
                  print('pressed');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
