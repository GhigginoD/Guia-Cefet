import 'package:App_Cefet/AppController.dart';
import 'package:App_Cefet/Rede_social.dart';
import 'package:App_Cefet/Sobre_curso.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  leading: Icon(
                    Icons.reorder,
                    color: Color(0xffF6F9FC),
                  ),
                  title: Text('Menu',
                      style: TextStyle(
                        color: Color(0xffF6F9FC),
                        fontSize: 25,
                      )),
                ),
                decoration: BoxDecoration(
                  color: Color(0xff6894BD),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: ListTile(
                  leading: Icon(Icons.home, color: Color(0xff9DA4A7)),
                  title: Text("Inicio",
                      style: TextStyle(color: Color(0xff9DA4A7), fontSize: 18)),
                  trailing: Icon(Icons.arrow_forward, color: Color(0xff6894BD)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  }),
            ),
            Divider(color: Colors.white,thickness: 2),
            Container(
              padding: EdgeInsets.all(15),
              child: ListTile(
                  leading: Icon(Icons.menu_book, color: Color(0xff9DA4A7)),
                  title: Text("Sobre os Cursos",
                      style: TextStyle(color: Color(0xff9DA4A7), fontSize: 18)),
                  trailing: Icon(Icons.arrow_forward, color: Color(0xff6894BD)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sobre_cursos(),
                      ),
                    );
                  }),
            ),
            Divider(color: Colors.white,thickness: 2),
            Container(
              padding: EdgeInsets.all(15),
              child: ListTile(
                  leading: Icon(Icons.group, color: Color(0xff9DA4A7)),
                  title: Text("Redes Sociais",
                      style: TextStyle(color: Color(0xff9DA4A7), fontSize: 18)),
                  trailing: Icon(Icons.arrow_forward, color: Color(0xff6894BD)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Redes_sociais(),
                      ),
                    );
                  }),
            ),
            Divider(color: Colors.white, thickness: 2),
            Container(
              padding: EdgeInsets.all(15),
              child: ListTile(
                leading: Icon(
                  Icons.wb_sunny,
                  color: Color(0xff9DA4A7),
                ),
                title: Text('Tema',
                    style: TextStyle(color: Color(0xff9DA4A7), fontSize: 18)),
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
            Divider(color: Colors.white,thickness: 2),
            Container(
              height: 50,
              margin: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 5), // padding: EdgeInsets.all(10),
              child: FlatButton(
                color: Color(0xff6894BD),
                shape: UnderlineInputBorder(),
                splashColor: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Acesso ao Portal',style: TextStyle(
                  color: Color(0xffF6F9FC),fontSize: 20)),
                  ],
                ),
                onPressed: () async{
                  const url = 'https://alunos.cefet-rj.br/aluno/login.action?error=';
                  if(await canLaunch(url)){
                    await launch(url);
                  }else{
                    throw 'Não foi possível acessar a $url';
                  }
                },
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 5),
             // padding: EdgeInsets.all(10),
              child: FlatButton(
                splashColor: Colors.blue,
                color: Color(0xff6894BD),
                shape: UnderlineInputBorder(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Manual do aluno',style: TextStyle(
                    color: Color(0xffF6F9FC),fontSize: 20)),
                  ],
                ),
                onPressed: () async {
                  const url = 'http://www.cefet-rj.br/index.php/2015-06-12-17-56-40';
                  if (await canLaunch(url)){
                    await launch(url);
                  }else{
                    throw 'Não foi possível acessar a $url';
                  }
                },
              ),
            ),
          ],
        )),
        body: ListView(
        children: <Widget>[
          Container(
          width: double.infinity,
          margin: EdgeInsets.only(left: 20.0, right: 20, bottom: 10, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'A Instituição',
                style: TextStyle(
                    color: Color(0xff6894BD),
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
                    color: Color(0xffC9E1EE),
                    boxShadow: [BoxShadow(color: Color(0xffD9DFE2))],
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  'A instituição Cefet foi fundada em 1917 originalmente como uma escola comum e posteriormente em 1934 foi transformada em uma escola técnica.',
                  style: TextStyle(color: Color(0xff1D2022), fontSize: 20),
                ),
              ),
              Text('Cursos disponíveis',
                  style: TextStyle(
                      color: Color(0xff6894BD),
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              Container(
                height: 320,
                width: 300,
                margin: EdgeInsets.all(35),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xffC9E1EE),
                    boxShadow: [BoxShadow(color: Color(0xffD9DFE2))],
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  '- Informática\n- administração\n- Mecânica\n- Edificações\n- Estradas\n- Eletrotécnica\n- Eletrônica\n- Meteorologia\n- Segurança do trabalho\n- Telecomunicações\n- Turismo',
                  style: TextStyle(color: Color(0xff1D2022), fontSize: 20),
                ),
              ),

              SizedBox(height: 30),
              Text('Unidades',
                  style: TextStyle(
                      color: Color(0xff6894BD),
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              Container(
                height: 320,
                width: 300,
                margin: EdgeInsets.all(35),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xffC9E1EE),
                    boxShadow: [BoxShadow(color: Color(0xffD9DFE2))],
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  '- Informática\n- administração\n- Mecânica\n- Edificações\n- Estradas\n- Eletrotécnica\n- Eletrônica\n- Meteorologia\n- Segurança do trabalho\n- Telecomunicações\n- Turismo',
                  style: TextStyle(color: Color(0xff1D2022), fontSize: 20),
                ),
              ),


            ],
          ),
        )
        ]
        )
    );
  }
}
