import 'all.dart';

class Notes extends StatefulWidget {
  Notes({this.app});
  final FirebaseApp app;
  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  final referenceDatabase = FirebaseDatabase.instance;
  var _codeMController = TextEditingController();
  var _matriculeController = TextEditingController();
  var _noteController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final ref = referenceDatabase.reference();
    return Scaffold(
      backgroundColor: Colors.grey[850],
      drawer: Menu(),
      appBar: AppBar(
        title: Text(
          'Saisie de notes',
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
      body: SingleChildScrollView(
        child: Container(
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
                        controller: _codeMController,
                        style: TextStyle(
                          fontFamily: 'openSans',
                          fontSize: 25,
                        ),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.teal, width: 2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          labelText: 'Code Module',
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
                        controller: _matriculeController,
                        style: TextStyle(
                          fontFamily: 'openSans',
                          fontSize: 25,
                        ),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.teal, width: 2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          labelText: 'matricule',
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
                        controller: _noteController,
                        style: TextStyle(
                          fontFamily: 'openSans',
                          fontSize: 25,
                        ),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.teal, width: 2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          labelText: 'Note',
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
                        PrimitiveWrapper data = new PrimitiveWrapper(0);
                        DataSnapshot snapshot_module = await ref
                            .child('Modules/' + _codeMController.text)
                            .once();
                        DataSnapshot snapshot_etd = await ref
                            .child('Etudiants/' + _matriculeController.text)
                            .once();
                        DataSnapshot snapshot_note = await ref
                            .child('Examen/' +
                                _codeMController.text +
                                '/' +
                                _matriculeController.text)
                            .once();
                        if (snapshot_module.value == null) {
                          ShowToastComponent.showDialog(
                              'Module n\'existe pas! ', context);
                        } else if (snapshot_etd.value == null) {
                          ShowToastComponent.showDialog(
                              'Etudiant n\'existe pas', context);
                        } else if (snapshot_note.value != null) {
                          ShowToastComponent.showDialog(
                              'L\'étudiant a déjà une note dans ce module',
                              context);
                        } else {
                          await showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                BuildPopupDialog(context, data),
                          );
                          print(data.value);
                          if (data.value == 1) {
                            ref
                                .child("Examen/" +
                                    _codeMController.text +
                                    '/' +
                                    _matriculeController.text)
                                .set({
                              'note': _noteController.text,
                            });
                            ShowToastComponent.showDialog(
                                'Note saisie avec succès', context);
                          } else {
                            ShowToastComponent.showDialog(
                                'Saisie de note annulée', context);
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
      ),
    );
  }
}
