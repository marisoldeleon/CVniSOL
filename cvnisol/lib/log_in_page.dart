import 'dart:convert';
import 'home_page.dart';
import 'sign_up.dart'; // Import your SignupPage
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

// ... (Your existing imports)

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>(); // Add a GlobalKey for the form

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool showPass = false;

  Future<void> _login() async {
    final response = await http.post(
      Uri.parse('http://localhost/sol/login.php'),
      body: {
        'username': usernameController.text,
        'password': passwordController.text,
      },
    );

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      if (result['message'] == 'Login successful') {
        // Navigate to the next screen (Firstpage)
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Firstpage()),
        );
      } else {
        // Handle login failure
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Incorrect username or password'),
          ),
        );
      }
    } else {
      // Handle errors
      print('Error: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 8, 78, 63),
        title: const Text(
          'Login Page',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          // Wrap the Form widget around your Column
          key: _formKey, // Set the key for the form
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('images/letter.jpg'),
                height: 100,
                width: 100,
              ),
              Text(
                'Log In',
                style: const TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontFamily: 'RobotoMono',
                ),
                controller: usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Color.fromRGBO(82, 50, 38, 1)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
                obscureText: false, // Set to false to show the entered text
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontFamily: 'RobotoMono',
                ),
                controller: passwordController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Password',
                  labelStyle:
                      const TextStyle(color: Color.fromRGBO(82, 50, 38, 1)),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        showPass = !showPass;
                      });
                    },
                    icon: Icon(
                      showPass ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                obscureText: !showPass,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Form is valid, perform login
                    _login();
                  }
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'RobotoMono',
                  ),
                ),
              ),
              const SizedBox(height: 10), // Add some spacing between buttons
              TextButton(
                onPressed: () {
                  // Navigate to the signup page (SignupPage)
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  );
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'RobotoMono',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.greenAccent,
    );
  }
}
