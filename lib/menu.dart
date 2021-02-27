import 'all.dart';

class Menu extends StatelessWidget {
  const Menu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Container(
          color: Colors.grey[900],
          child: ListView(
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
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Etats(),
                    ),
                  );
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
    );
  }
}
