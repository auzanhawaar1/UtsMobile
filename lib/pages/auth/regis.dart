import 'package:coba_posttest5/pages/auth/auth.dart';
import 'package:coba_posttest5/pages/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Regis extends StatefulWidget {
  const Regis({super.key});

  @override
  State<Regis> createState() => _RegisState();
}
class _RegisState extends State<Regis> {
  bool _loading = false;
  bool registrationSuccess= true;

  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  handleSubmit() async {
    if (!_formKey.currentState!.validate()) return;
    final email = emailController.value.text;
    final password = passwordController.value.text;
    setState(() => _loading = true);

    try {
      await Auth().regis(email, password);

      if (registrationSuccess) {
        showSuccessSnackBar("You have successfully registered!");
      } else {
        showErrorSnackBar("Registration failed. Please try again.");
      }
    } catch (error) {
      showErrorSnackBar("An error occurred during registration.");
    } finally {
      setState(() => _loading = false);
    }
  }

  void showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 3),
        backgroundColor: Color.fromRGBO(255, 29, 165, 210),
      ),
    );
  }

  void showErrorSnackBar(String errorMessage) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(errorMessage),
        duration: Duration(seconds: 3),
        backgroundColor: const Color.fromARGB(255, 54, 143, 244),
      ),
    );
  }

  @override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REGISTER', style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 249, 217, 73))),
        backgroundColor: Color.fromARGB(255, 60, 72, 107), 
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Email',
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => handleSubmit(),
                  child: _loading
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            color: Color.fromARGB(255, 60, 72, 107),
                            strokeWidth: 2,
                          ),
                        )
                      : Text("Submit"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPageT()));
                  },
                  child: Text("Already have an account? Click here to login"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}