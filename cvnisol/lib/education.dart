import 'package:flutter/material.dart';

class educpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Educational Attainment"),
        backgroundColor: const Color.fromARGB(255, 17, 80, 51),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  children: [
                    Icon(
                      Icons.school_outlined,
                      color: Color.fromARGB(255, 112, 0, 122),
                      size: 40,
                    ),
                    Text(
                      ' College',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontFamily: 'RobotoMono',
                          fontSize: 30),
                    )
                  ],
                ),
              )
            ],
          ),
          Divider(
            height: 20,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(
              children: [
                Text(
                  'Philippines College of Science and Technology',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'RobotoMono',
                    fontSize: 18,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check,
                      color: Color.fromARGB(255, 112, 0, 122),
                      size: 15,
                    ),
                    Text(
                      'Bachelor of Information And Technology',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'RobotoMono',
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 30,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              children: [
                Icon(
                  Icons.school_outlined,
                  color: Color.fromARGB(255, 112, 0, 122),
                  size: 40,
                ),
                Text(
                  ' High School/SHS',
                  style: TextStyle(
                    fontFamily: 'RobotoMono',
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(
              children: [
                Text(
                  'Dagupan City National High School',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'RobotoMono',
                    fontSize: 18,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check,
                      color: Color.fromARGB(255, 112, 0, 122),
                      size: 15,
                    ),
                    Text(
                      'Information Communication and Technology',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'RobotoMono',
                        fontSize: 14,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Divider(
            height: 30,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  children: [
                    Icon(
                      Icons.school_outlined,
                      color: Color.fromARGB(255, 112, 0, 122),
                      size: 40,
                    ),
                    Text(
                      ' Elementary',
                      style: TextStyle(
                          fontFamily: 'RobotoMono',
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 30),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  children: [
                    Text(
                      'Banaoang Elementary School',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'RobotoMono',
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
      backgroundColor: Colors.greenAccent,
    );
  }
}
///Continueeeeeee 