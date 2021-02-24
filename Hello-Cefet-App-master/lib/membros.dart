import 'package:flutter/material.dart';

class Membros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          'assets/logo.png',
          fit: BoxFit.contain,
          height: 70,
          color: Colors.white,
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.settings, color: Colors.white), onPressed: null)
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 10,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Text(
              "Professores e Orientadores do Projeto:",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
