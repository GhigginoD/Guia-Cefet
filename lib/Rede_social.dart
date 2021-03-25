import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

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
              padding: EdgeInsets.all(15),
              child: ListTile(
                  leading: Icon(Icons.photo_camera_outlined, color: Color(0xff9DA4A7)),
                  title: Text("Instagram",
                      style: TextStyle(color: Color(0xff9DA4A7), fontSize: 18)),
                  trailing: Icon(Icons.arrow_forward, color: Color(0xff6894BD)),
                  onTap: () async {
                    const url = 'https://www.instagram.com/cefet_rj/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Não foi possível acessar $url';
                    }
                  },
              ),
            ),
            Divider(color: Colors.white, thickness: 2,height: 40),
            Container(
              padding: EdgeInsets.all(15),
              child: ListTile(
                  leading: Icon(Icons.alternate_email, color: Color(0xff9DA4A7)),
                  title: Text("Twitter",
                      style: TextStyle(color: Color(0xff9DA4A7), fontSize: 18)),
                  trailing: Icon(Icons.arrow_forward, color: Color(0xff6894BD)),
                  onTap: () async {
                    const url = 'https://twitter.com/cefet_rj';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Não foi possível acessar $url';
                    }
                  },
              ),
            ),
            Divider(color: Colors.white, thickness: 2,height: 40),
            Container(
              padding: EdgeInsets.all(15),
              child: ListTile(
                  leading: Icon(Icons.ac_unit, color: Color(0xff9DA4A7)),
                  title: Text("Linkedin",
                      style: TextStyle(color: Color(0xff9DA4A7), fontSize: 18)),
                  trailing: Icon(Icons.arrow_forward, color: Color(0xff6894BD)),
                  onTap: () async {
                    const url = 'https://www.linkedin.com/school/25008864/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Não foi possível acessar $url';
                    }
                  },
              ),
            ),
            Divider(color: Colors.white, thickness: 2,height: 40),
            Container(
              padding: EdgeInsets.all(15),
              child: ListTile(
                  leading: Icon(Icons.assignment_ind_outlined, color: Color(0xff9DA4A7)),
                  title: Text("Facebook",
                      style: TextStyle(color: Color(0xff9DA4A7), fontSize: 18)),
                  trailing: Icon(Icons.arrow_forward, color: Color(0xff6894BD)),
                  onTap: () async {
                    const url = 'https://www.facebook.com/cefetrjoficial';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Não foi possível acessar $url';
                    }
                  },
              ),
            ),


          ],
        ),
      ),
    );
  }
}
