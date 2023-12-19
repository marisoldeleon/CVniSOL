import 'package:flutter/material.dart';

class secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Information"),
        backgroundColor: Color.fromRGBO(7, 90, 44, 0.957),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
            child: Text(
              'Name: Marisol Canta De Leon.',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                fontSize: 19,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Text(
              'Age: 21 Years Old',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 19,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Text(
              'Date of Birth: November 29, 2001',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 19,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Text(
              'Add: Banaoang Calasiao Pangasinan',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 19,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Text(
              'Height: 152cm',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 19,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Text(
              'Place of Birth: Calasiao',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 19,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Text(
              'Sex: Female',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 19,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Text(
              'Citizienship: Filipino',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 19,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.greenAccent,
    );
  }
}
