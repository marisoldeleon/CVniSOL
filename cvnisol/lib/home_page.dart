import 'package:cv/skills_page.dart';
import 'package:flutter/material.dart';
import 'second_page.dart';
import 'education.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Curriculum Vitae",
    home: Firstpage(),
  ));
}

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('My Curriculum Vitae'),
        ),
        backgroundColor: Color.fromRGBO(3, 44, 21, 0.957),
      ),
      body: Column(
        children: [
          Container(
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 133, 138, 134),
                radius: 50,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/Picsart.jpg'),
                ),
              ),
            ),
          ),
          const Divider(
            height: 10,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          Row(
            children: [
              Container(
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text(
                    'NAME:',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 112, 0, 122),
                        fontFamily: 'RobotoMono'),
                  ),
                ),
              ),
            ],
          ),
          const Text(
            'Marisol Canta De Leon.',
            style: TextStyle(
              fontFamily: 'RobotoMono',
              fontSize: 20,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          Row(
            children: [
              Container(
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text(
                    'POSITION:',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 112, 0, 122),
                        fontFamily: 'RobotoMono'),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text(
              'I.T Technician',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                fontSize: 20,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          const Divider(
            height: 10,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          Row(
            children: [
              Container(
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text(
                    'CONTACT:',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 112, 0, 122),
                      fontFamily: 'RobotoMono',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Text(
            '+63 992 8339 069',
            style: TextStyle(
              fontFamily: 'RobotoMono',
              fontSize: 20,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const Text(
            'marisolcanta29@gmail.com',
            style: TextStyle(
              fontFamily: 'RobotoMono',
              fontSize: 20,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const Divider(
            height: 10,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          Row(
            children: [
              Container(
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text(
                    'SOCIAL MEDIAS:',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 112, 0, 122),
                      fontFamily: 'RobotoMono',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.facebook,
              color: Color.fromARGB(255, 125, 27, 134),
            ),
            Text(
              'Marisol De Leon.',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,
              ),
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: IconButton(
                  iconSize: 40,
                  icon: const Icon(
                    Icons.info,
                    color: Color.fromARGB(255, 112, 0, 122),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => secondpage(),
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: IconButton(
                      iconSize: 40,
                      icon: const Icon(
                        Icons.school,
                        color: Color.fromARGB(255, 112, 0, 122),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => educpage(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: IconButton(
                      iconSize: 40,
                      icon: const Icon(
                        Icons.build_circle,
                        color: Color.fromARGB(255, 112, 0, 122),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => skillspage(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
      backgroundColor: Colors.greenAccent,
    );
  }
}
