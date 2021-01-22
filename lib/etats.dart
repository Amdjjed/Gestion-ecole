import 'package:flutter/material.dart';
import 'all.dart';

class Etats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      drawer: Drawer(
        child: Container(
          color: Colors.grey[900],
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.school_rounded,
                      color: Colors.white38,
                      size: 80,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Gestion d\'école',
                      style: TextStyle(
                        fontFamily: 'openSans',
                        color: Colors.white,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.teal[700],
                ),
              ),
              ExpansionTile(
                title: Text(
                  'Mise à jour',
                  style: TextStyle(
                    fontFamily: 'openSans',
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontSize: 18,
                  ),
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Etudiant',
                      style: TextStyle(
                        fontFamily: 'openSans',
                        color: Colors.white,
                        letterSpacing: 1.5,
                        fontSize: 18,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Etudiant(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Module',
                      style: TextStyle(
                        fontFamily: 'openSans',
                        color: Colors.white,
                        letterSpacing: 1.5,
                        fontSize: 18,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Module(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Examen',
                      style: TextStyle(
                        fontFamily: 'openSans',
                        color: Colors.white,
                        letterSpacing: 1.5,
                        fontSize: 18,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Examen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              ListTile(
                title: Text(
                  'Etats',
                  style: TextStyle(
                    fontFamily: 'openSans',
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  'Quitter',
                  style: TextStyle(
                    fontFamily: 'openSans',
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Authentification(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          'ETATS',
          style: TextStyle(
            fontFamily: 'openSans',
            color: Colors.white,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 5,
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 80, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Icon(
                  Icons.leaderboard_rounded,
                  size: 150,
                  color: Colors.white38,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    color: Colors.teal,
                    textColor: Colors.grey[200],
                    padding: EdgeInsets.all(10),
                    splashColor: Colors.teal[100],
                    onPressed: () {
                      /*...*/
                    },
                    child: Text(
                      "Certificat de scolarité",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'openSans',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Center(
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    color: Colors.teal,
                    textColor: Colors.grey[200],
                    padding: EdgeInsets.all(10),
                    splashColor: Colors.teal[100],
                    onPressed: () {
                      /*...*/
                    },
                    child: Text(
                      "Liste des étudiants",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'openSans',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Center(
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    color: Colors.teal,
                    textColor: Colors.grey[200],
                    padding: EdgeInsets.all(10),
                    splashColor: Colors.teal[100],
                    onPressed: () {
                      /**... */
                    },
                    child: Text(
                      "Bulletin de notes",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'openSans',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
