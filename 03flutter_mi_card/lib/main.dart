import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[900],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage('images/foto001.jpg'),
              ),
              Text(
                'Paulo H. Saling',
                style: TextStyle(
                  fontFamily: 'Allura',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'ENGENHEIRO AMBIENTAL',
                style: TextStyle(
                  fontFamily: 'Oswald',
                  fontSize: 17.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 25.0,
                width: 150.0,
                child: Divider(
                  color: Colors.amberAccent[400],
                  thickness: 2,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.lightBlue[900],
                  ),
                  title: Text(
                    '+55 46 991402195',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.25,
                      color: Colors.lightBlue[900],
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.lightBlue[900],
                  ),
                  title: Text(
                    'eng.paulosaling@gmail.com',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.normal,
                      fontSize: 17.0,
                      letterSpacing: 1.25,
                      color: Colors.lightBlue[900],
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.lightBlue[900],
                  ),
                  title: Text(
                    'salingempreendimentos@gmail.com',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.normal,
                      fontSize: 15.0,
                      letterSpacing: 1.25,
                      color: Colors.lightBlue[900],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
                width: 150.0,
                child: Divider(
                  color: Colors.amberAccent[400],
                  thickness: 2,
                ),
              ),
              SizedBox(
                height: 150,
                width: 150,
                child: Image(
                  image: AssetImage('images/logosaling002.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
