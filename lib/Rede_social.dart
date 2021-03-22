import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Redes_sociais extends StatefulWidget {
  State<Redes_sociais> createState() {
    return Redes_sociais_page();
  }
}

class Redes_sociais_page extends State<Redes_sociais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
          backgroundColor: Color(0xff6894BD),
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Redes Sociais',
            style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 40, right: 40),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.1, 1],
                  colors: [
                    Color(0xFFFFFFFF),
                    Color(0XFF1565C0),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: SizedBox(
                          child: Image.asset("assets/logo.png"),
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Text(
                        "Instagram",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  onPressed: () async {
                    const url = 'https://www.instagram.com/cefet_rj/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Não foi possível acessar $url';
                    }
                  },
                ),
              ),
            ),
            Divider(color: Colors.white, thickness: 2,height: 40),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.1, 1],
                  colors: [
                    Color(0xFFFFFFFF),
                    Color(0XFF1565C0),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: SizedBox(
                          child: Image.asset("assets/logo.png"),
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Text(
                        "Twitter",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  onPressed: () async {
                    const url = 'https://twitter.com/cefet_rj';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Não foi possível acessar $url';
                    }
                  },
                ),
              ),
            ),
            Divider(color: Colors.white, thickness: 2,height: 40),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.1, 1],
                  colors: [
                    Color(0xFFFFFFFF),
                    Color(0XFF1565C0),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: SizedBox(
                          child: Image.asset("assets/logo.png"),
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Text(
                        "Linkedin",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  onPressed: () async {
                    const url = 'https://www.linkedin.com/school/25008864/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Não foi possível acessar $url';
                    }
                  },
                ),
              ),
            ),
            Divider(color: Colors.white, thickness: 2,height: 40),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.1, 1],
                  colors: [
                    Color(0xFFFFFFFF),
                    Color(0XFF1565C0),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: SizedBox(
                          child: Image.asset("assets/logo.png"),
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Text(
                        "Facebook",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  onPressed: () async {
                    const url = 'https://www.facebook.com/cefetrjoficial';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Não foi possível acessar $url';
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
