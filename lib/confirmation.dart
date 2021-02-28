import 'all.dart';

Widget BuildPopupDialog(BuildContext context, PrimitiveWrapper data) {
  return new AlertDialog(
    backgroundColor: Colors.grey[850],
    title: const Text(
      'CONFIRMATION',
      style: TextStyle(
        fontSize: 20.0,
        fontFamily: 'openSans',
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
      ),
    ),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Voulez vous confirmer?",
          style: TextStyle(
            fontSize: 16.0,
            fontFamily: 'openSans',
            letterSpacing: 2,
          ),
        ),
      ],
    ),
    actions: <Widget>[
      FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        color: Colors.teal,
        textColor: Colors.grey[200],
        padding: EdgeInsets.all(10),
        splashColor: Colors.teal[100],
        onPressed: () {
          data.value = 1;
          Navigator.of(context).pop();
        },
        child: const Text(
          'OUI',
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'openSans',
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),
    ],
  );
}
