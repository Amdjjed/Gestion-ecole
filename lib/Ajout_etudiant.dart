import 'all.dart';

class AjoutEtudiant extends StatefulWidget {
  AjoutEtudiant({this.app});
  final FirebaseApp app;
  @override
  _AjoutEtudiantState createState() => _AjoutEtudiantState();
}

class _AjoutEtudiantState extends State<AjoutEtudiant> {
  final referenceDatabase = FirebaseDatabase.instance;
  var _matriculeController = TextEditingController();
  var _nomController = TextEditingController();
  var _prenomController = TextEditingController();
  var _sectionController = TextEditingController();
  var _groupeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final ref = referenceDatabase.reference();
    return Scaffold(
      backgroundColor: Colors.grey[850],
      drawer: Menu(),
      appBar: AppBar(
        title: Text(
          'Inscription',
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
          padding: EdgeInsets.fromLTRB(30, 90, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Icon(
                  Icons.add_circle_outline_rounded,
                  size: 150,
                  color: Colors.white38,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: _matriculeController,
                      style: TextStyle(
                        fontFamily: 'openSans',
                        fontSize: 25,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        labelText: 'Matricule',
                        labelStyle: TextStyle(
                          fontFamily: 'openSans',
                          letterSpacing: 1.5,
                          fontSize: 20,
                        ),
                        suffixIcon: const Icon(
                          Icons.person_rounded,
                          color: Colors.teal,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 30),
                      ),
                    ),
                    SizedBox(height: 25),
                    TextFormField(
                      controller: _nomController,
                      style: TextStyle(
                        fontFamily: 'openSans',
                        fontSize: 25,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        labelText: 'Nom',
                        labelStyle: TextStyle(
                          fontFamily: 'openSans',
                          letterSpacing: 1.5,
                          fontSize: 20,
                        ),
                        suffixIcon: const Icon(
                          Icons.person_rounded,
                          color: Colors.teal,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 30),
                      ),
                    ),
                    SizedBox(height: 25),
                    TextFormField(
                      controller: _prenomController,
                      style: TextStyle(
                        fontFamily: 'openSans',
                        fontSize: 25,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        labelText: 'Prénom',
                        labelStyle: TextStyle(
                          fontFamily: 'openSans',
                          letterSpacing: 1.5,
                          fontSize: 20,
                        ),
                        suffixIcon: const Icon(
                          Icons.person_rounded,
                          color: Colors.teal,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 30),
                      ),
                    ),
                    SizedBox(height: 25),
                    TextFormField(
                      controller: _sectionController,
                      style: TextStyle(
                        fontFamily: 'openSans',
                        fontSize: 25,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        labelText: 'Section',
                        labelStyle: TextStyle(
                          fontFamily: 'openSans',
                          letterSpacing: 1.5,
                          fontSize: 20,
                        ),
                        suffixIcon: const Icon(
                          Icons.person_rounded,
                          color: Colors.teal,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 30),
                      ),
                    ),
                    SizedBox(height: 25),
                    TextFormField(
                      controller: _groupeController,
                      style: TextStyle(
                        fontFamily: 'openSans',
                        fontSize: 25,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        labelText: 'Groupe',
                        labelStyle: TextStyle(
                          fontFamily: 'openSans',
                          letterSpacing: 1.5,
                          fontSize: 20,
                        ),
                        suffixIcon: const Icon(
                          Icons.person_rounded,
                          color: Colors.teal,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 30),
                      ),
                    ),
                  ],
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
                    onPressed: () async {
                      Etudiant_ etd = new Etudiant_(
                          int.parse(_matriculeController.text),
                          _nomController.text,
                          _prenomController.text,
                          _sectionController.text,
                          int.parse(_groupeController.text));
                      DatabaseReference etudiant = ref
                          .child("etudiants")
                          .child(etd.matricule.toString());
                      DataSnapshot snapshot = await ref
                          .child('Etudiants/' + etd.matricule.toString())
                          .once();
                      if (snapshot.value != null) {
                        ShowToastComponent.showDialog(
                            'L\'etudiant existe deja', context);
                      } else {
                        PrimitiveWrapper data = new PrimitiveWrapper(0);
                        await showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              BuildPopupDialog(context, data),
                        );
                        print(data.value);
                        if (data.value == 1) {
                          ref
                              .child("Etudiants/" + etd.matricule.toString())
                              .set({
                            'nom': etd.nom,
                            'prenom': etd.prenom,
                            'section': etd.codeS,
                            'groupe': etd.groupe.toString()
                          });
                        }
                      }
                    },
                    child: Text(
                      "Valider",
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
