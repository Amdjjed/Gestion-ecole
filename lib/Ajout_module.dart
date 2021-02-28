import 'all.dart';

class AjoutModule extends StatefulWidget {
  AjoutModule({this.app});
  final FirebaseApp app;
  @override
  _AjoutModuleState createState() => _AjoutModuleState();
}

class _AjoutModuleState extends State<AjoutModule> {
  final referenceDatabase = FirebaseDatabase.instance;
  var _codeMController = TextEditingController();
  var _libMController = TextEditingController();
  var _speMController = TextEditingController();
  var _coefController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final ref = referenceDatabase.reference();
    return Scaffold(
      backgroundColor: Colors.grey[850],
      drawer: Menu(),
      appBar: AppBar(
        title: Text(
          'Nouveau module',
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
                        controller: _libMController,
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
                          labelText: 'Libellé module',
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
                        controller: _coefController,
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
                          labelText: 'Coefficient',
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
                        controller: _speMController,
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
                          labelText: 'Spécialité',
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
                        DataSnapshot snapshot = await ref
                            .child('Modules/' + _codeMController.text)
                            .once();
                        if (snapshot.value != null) {
                          ShowToastComponent.showDialog(
                              'Le module existe deja', context);
                        } else {
                          PrimitiveWrapper data = new PrimitiveWrapper(0);
                          await showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                BuildPopupDialog(context, data),
                          );
                          print(data.value);
                          if (data.value == 1) {
                            ref.child("Modules/" + _codeMController.text).set({
                              'libellé': _libMController.text,
                              'coefficient': _coefController.text,
                              'spécialité': _speMController.text
                            });
                            ShowToastComponent.showDialog(
                                'Ajout fait avec succès', context);
                          } else {
                            ShowToastComponent.showDialog(
                                'Ajout annulé', context);
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
