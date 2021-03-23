import 'package:flutter/material.dart';

class Sobre_cursos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: AppBar(
              backgroundColor: Color(0xff6894BD),
              elevation: 0,
              centerTitle: true,
              title: Text('Sobre os cursos',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic)))),
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
                  color: Color(0xff6894BD),
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Color(0xff9DA4A7))]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    child: Text('Administração',textAlign: TextAlign.start),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            fontStyle: FontStyle.italic)),
                    onPressed: () {
                      print('pressed Administração');
                    },
                  ),
                  Icon(Icons.lock,color: Colors.white),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Color(0xff6894BD))]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    child: Text('Informatica',textAlign: TextAlign.start),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            fontStyle: FontStyle.italic)),
                    onPressed: () {
                      print('pressed Informatica');
                    },
                  ),
                  Icon(Icons.lock,color: Colors.white),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Color(0xff9DA4A7))]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    child: Text('Mecanica',textAlign: TextAlign.start),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            fontStyle: FontStyle.italic)),
                    onPressed: () {
                      print('pressed Mecanica');
                    },
                  ),
                  Icon(Icons.lock,color: Colors.white),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Color(0xff9DA4A7))]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    child: Text('Edificações',textAlign: TextAlign.start),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            fontStyle: FontStyle.italic)),
                    onPressed: () {
                      print('pressed Edificações');
                    },
                  ),
                  Icon(Icons.lock,color: Colors.white),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Color(0xff9DA4A7))]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    child: Text('Estradas',textAlign: TextAlign.start),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            fontStyle: FontStyle.italic)),
                    onPressed: () {
                      print('pressed Estradas');
                    },
                  ),
                  Icon(Icons.lock,color: Colors.white),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Color(0xff9DA4A7))]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    child: Text('Eletronica',textAlign: TextAlign.start),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            fontStyle: FontStyle.italic)),
                    onPressed: () {
                      print('pressed Eletronica');
                    },
                  ),
                  Icon(Icons.lock,color: Colors.white),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Color(0xff9DA4A7))]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    child: Text('Eletrotecnica',textAlign: TextAlign.start),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            fontStyle: FontStyle.italic)),
                    onPressed: () {
                      print('pressed Eletrotecnica');
                    },
                  ),
                  Icon(Icons.lock,color: Colors.white),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Color(0xff9DA4A7))]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    child: Text('Meteorologia',textAlign: TextAlign.start),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            fontStyle: FontStyle.italic)),
                    onPressed: () {
                      print('pressed Meteorologia');
                    },
                  ),
                  Icon(Icons.lock,color: Colors.white),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Color(0xff9DA4A7))]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    child: Text('Segurança do Trabalho',textAlign: TextAlign.start),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            fontStyle: FontStyle.italic)),
                    onPressed: () {
                      print('pressed Segurança do Trabalho');
                    },
                  ),
                  Icon(Icons.lock,color: Colors.white),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Color(0xff9DA4A7))]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    child: Text('Telecomunicações',textAlign: TextAlign.start,),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            fontStyle: FontStyle.italic)),
                    onPressed: () {
                      print('pressed Telecomunicações');
                    },
                  ),
                  Icon(Icons.lock,color: Colors.white),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Color(0xff9DA4A7))]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    child: Text('Turismo',textAlign: TextAlign.start),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            fontStyle: FontStyle.italic)),
                    onPressed: () {
                      print('pressed Turismo');
                    },
                  ),
                  Icon(Icons.lock,color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
