import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  //final double x = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink.shade300,

        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/01.png'),
              ),
              Text(
                'Pornpoj Hong.',
                style: TextStyle(
                    color: Colors.white, fontSize: 30, fontFamily: 'Pacifico'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Flutter Carrier',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2,
                    fontSize: 20,
                    fontFamily: 'SourceSansPro'),
              ),
              SizedBox(
                height: 15,
                width: 300,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                padding: EdgeInsets.all(10),
                //color: Colors.white,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.phone, color: Colors.black),
                    SizedBox(width: 25),
                    Text(
                      '410-330-9507',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                padding: EdgeInsets.all(10),
                //color: Colors.white,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.email, color: Colors.black),
                    SizedBox(width: 25),
                    Text(
                      'pornpoj.h@gmail.com',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              )
            ],
          ),
        ),

        //drawerScrimColor: Colors.green,
      ),
    );
  }
}
