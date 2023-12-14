import 'package:coba_posttest5/pages/auth/auth.dart';
import 'package:coba_posttest5/pages/confirm_new_account_page.dart';
import 'package:coba_posttest5/pages/auth/regis.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPageT extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPageT> {
  bool _loading = false;
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _showSnackbar(String message) {
    final snackBar = SnackBar(
      content: Text(message),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          'Sign In',
          style: Theme.of(context).textTheme.headline4!.copyWith(
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontFamily: 'Tommy',
                color: Color.fromARGB(255, 249, 217, 73)
              ),
        ),
        backgroundColor: Color.fromARGB(255, 60, 72, 107),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.person_add),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Regis()));
            },
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.person,
                size: 100,
                color: Colors.grey,
              ),
              SizedBox(height: screenHeight * 0.03),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
                SizedBox(height: screenHeight * 0.03),
                CupertinoButton(
                    child: Text(
                      'Login',
                      style: TextStyle(decorationColor: Colors.cyanAccent),
                    ),
                    onPressed: () async {
                      if (!_formKey.currentState!.validate()) return;

                      final email = emailController.value.text;
                      final password = passwordController.value.text;

                      setState(() => _loading = true);
                      
                      try {
                        await Auth().login(email, password);

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Login successful!"),
                            duration: Duration(seconds: 3),
                            backgroundColor: Colors.blue,
                          ),
                        );
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConfirmNewAccountPage()),
                        );
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Failed to login!"),
                            duration: Duration(seconds: 2),
                            backgroundColor:
                                const Color.fromARGB(255, 29, 165, 210),
                          ),
                        );
                      } finally {
                        setState(() => _loading = false);
                      }
                      
                    }),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Regis()),
                    );
                  },
                  child: Text("Don't have an account? Register here"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}