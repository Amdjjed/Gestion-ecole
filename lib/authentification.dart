import 'package:flutter/services.dart';

import 'all.dart';

class Authentification extends StatefulWidget {
  @override
  _AuthentificationState createState() => _AuthentificationState();
}

class _AuthentificationState extends State<Authentification> {
  var _usernameController = TextEditingController();
  var _password = TextEditingController();
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 150, 30, 0),
          child: Center(
            child: Form(
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.person_rounded,
                    color: Colors.grey[400],
                    size: 200,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _usernameController,
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
                      helperText: 'Votre nom d\'utilisateur.',
                      helperStyle: TextStyle(
                        fontFamily: 'merriWeather',
                        color: Colors.teal,
                        letterSpacing: 1.5,
                      ),
                      labelText: 'Username',
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
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _password,
                    obscureText: true,
                    style: TextStyle(
                      fontFamily: 'openSans',
                      fontSize: 25,
                    ),
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      suffixIcon: const Icon(
                        Icons.lock_rounded,
                        color: Colors.teal,
                      ),
                      helperText: 'Votre mot de passe.',
                      helperStyle: TextStyle(
                        fontFamily: 'merriWeather',
                        color: Colors.teal,
                        letterSpacing: 1.5,
                      ),
                      labelText: 'Mot De Passe',
                      labelStyle: TextStyle(
                        fontFamily: 'openSans',
                        letterSpacing: 1.5,
                        fontSize: 20,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: FlatButton(
                      onPressed: () {
                        print('i:');
                        print(i);
                        if (_usernameController.text == 'admin' &&
                            _password.text == 'admin') {
                          _usernameController.text = '';
                          _password.text = '';
                          i = 0;
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Etats(),
                            ),
                          );
                        }
                        i++;
                        if (i == 3) {
                          i = 0;
                          SystemNavigator.pop();
                        }
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'S\'AUTHENTIFIER',
                            style: TextStyle(
                              fontFamily: 'openSans',
                              letterSpacing: 1.5,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.login_rounded,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
