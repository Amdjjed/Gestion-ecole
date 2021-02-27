import 'all.dart';

class Etats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      drawer: Menu(),
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
                    onPressed: () {},
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
