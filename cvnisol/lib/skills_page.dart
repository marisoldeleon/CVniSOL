import 'package:flutter/material.dart';

class skillspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Skills"),
        backgroundColor: Color.fromRGBO(7, 90, 44, 0.957),
      ),
      body: Column(
        children: [
          Container(
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check,
                        color: Color.fromARGB(255, 112, 0, 122),
                        size: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          'Written Communications',
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Icon(
                        Icons.check,
                        color: Color.fromARGB(255, 112, 0, 122),
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        'Problem Solving',
                        style: TextStyle(
                          fontFamily: 'RobotoMono',
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Icon(
                        Icons.check,
                        color: Color.fromARGB(255, 112, 0, 122),
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        'LeaderShip',
                        style: TextStyle(
                          fontFamily: 'RobotoMono',
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 30,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Icon(
                        Icons.check,
                        color: Color.fromARGB(255, 112, 0, 122),
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        'Team Work',
                        style: TextStyle(
                          fontFamily: 'RobotoMono',
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 30,
                        ),
                      ),
                    )
                  ],
                )
              ]),
            ),
          )
        ],
      ),
      backgroundColor: Colors.greenAccent,
    );
  }
}
///Continueeeeeee 