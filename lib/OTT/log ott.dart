import 'package:flutter/material.dart';

import '../lang ott.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _TRYState();
}

class _TRYState extends State<login> {
  final _formGlobalkey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue, Colors.red]),
        ),
        child: Form(
          key: _formGlobalkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(height: 20),
              Container(
                width: 330,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.person),
                    hintText: "Email address or Phone number",
                    hintStyle: TextStyle(color: Colors.black54),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return 'Enter a valid email!';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 330,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.password),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.black54),
                  ),
                  validator: (value) {
                    if (value == null || value.length < 8) {
                      return "Password must be at least 8 characters";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 20),
              AnimatedOpacity(
                opacity: opacityLevel,
                duration: const Duration(seconds: 3),
                child: Image.network(
                    "https://i.pinimg.com/originals/06/ef/d9/06efd9fc18aade1ce5a7f80374b5ce61.gif"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formGlobalkey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Validation successful")),
                    );
                    // Navigate to the desired screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => lang()),
                    );
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}