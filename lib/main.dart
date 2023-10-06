import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Text Fidld and input from text'),
      ),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.75,
          heightFactor: 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (input) {
                  debugPrint('Name : $input');
                },
                decoration: InputDecoration(
                  focusedBorder: fieldBorder(Colors.deepOrange),
                  enabledBorder: fieldBorder(Colors.blue),
                  labelText: 'Enter your name',
                  floatingLabelStyle: TextStyle(color: Colors.black45),
                  hintText: 'your name',
                  prefixIcon: Icon(Icons.person),
                  fillColor: Colors.white38,
                  filled: true,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: fieldBorder(Colors.red),
                  enabledBorder: fieldBorder(Colors.blue),
                  labelText: 'Enter your email',
                  floatingLabelStyle: TextStyle(color: Colors.black45),
                  hintText: 'Your email address',
                  prefixIcon: Icon(Icons.email),
                  filled: true,
                  fillColor: Colors.white38,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: fieldBorder(Colors.red),
                  enabledBorder: fieldBorder(Colors.blue),
                  labelText: 'Enter Your Phone Number',
                  floatingLabelStyle: TextStyle(color: Colors.black45),
                  prefixIcon: Icon(Icons.phone),
                  hintText: ('Your Phone Number'),
                  fillColor: Colors.white38,
                  filled: true,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  focusedBorder: fieldBorder(Colors.red),
                  enabledBorder: fieldBorder(Colors.blue),
                  labelText: 'Enter your password',
                  floatingLabelStyle: TextStyle(color: Colors.black45),
                  hintText: 'Your 8 charecter password',
                  prefixIcon: Icon(Icons.password),
                  filled: true,
                  fillColor: Colors.white38,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

OutlineInputBorder fieldBorder(color) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(
      color: color,
      width: 2,
    ),
  );
}
