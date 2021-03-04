import 'package:flutter/material.dart';


class Redes_sociais extends StatefulWidget{

  State<Redes_sociais> createState(){
    return Redes_sociais_page();
  }

}

class Redes_sociais_page extends State<Redes_sociais>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
          backgroundColor: Colors.blue[400],
          elevation: 0,
          centerTitle: true,
          title: Text('Redes Sociais',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        
      ),
    );

  }

}