import 'package:ecommerce/constant.dart';
import 'package:ecommerce/model/user.dart';
import 'package:ecommerce/view/components/custom_field.dart';
import 'package:ecommerce/view/pages/home.dart';
import 'package:ecommerce/view/pages/registration.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 230, 228, 228),
            ),
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const SizedBox(height: 100),
                        const CircleAvatar(
                          radius: 80,
                          backgroundImage: AssetImage('images/logo.jpg'),
                        ),
                        const SizedBox(height: 10),
                        Hero(
                          tag: 'appBarTitle',
                          child: Text(
                            'Vintage Home Furniture',
                            style: GoogleFonts.lato(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                color: Colors.grey.shade800),
                          ),
                        ),
                        const SizedBox(height: 50),
                        CustomField(
                          label: 'Email',
                          icon: const Icon(Icons.email_outlined),
                          controller: _emailController,
                          onValidator: (value) {
                            if (value!.isEmpty) {
                              return 'Email is empty';
                            }
                          },
                          onSavedClick: (value) {
                            _emailController.text = value!;
                          },
                        ),
                        const SizedBox(height: 25),
                        CustomField(
                          label: 'Password',
                          icon: const Icon(Icons.password_outlined),
                          controller: _passwordController,
                          onValidator: (value) {
                            if (value!.isEmpty) {
                              return 'Password is empty';
                            }
                          },
                          onSavedClick: (value) {
                            _passwordController.text = value!;
                          },
                        ),
                        const SizedBox(height: 40),
                        MaterialButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              bool loged = false;

                              for (int i = 0; i < User.users.length; i++) {
                                if (_emailController.text.toString() ==
                                        User.users[i]['email'] &&
                                    _passwordController.text ==
                                        User.users[i]['password']) {
                                  loged = true;
                                  break;
                                }
                              }
                              if (loged) {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    'home', (route) => false,
                                    arguments:
                                        _emailController.text.toString()); //!
                                User.currentUser = User()
                                    .getUserByEmail(_emailController.text);
                                // Navigator.of(context).pushAndRemoveUntil(
                                //     MaterialPageRoute(
                                //         builder: (context) => Home()),
                                //     (route) => false);

                                SnackBar snackBar = SnackBar(
                                  content: Text('Successfully Login'),
                                  action: SnackBarAction(
                                      label: 'Cancel',
                                      onPressed: () {
                                        ScaffoldMessenger.of(context)
                                            .clearSnackBars();
                                      }),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              } else {
                                SnackBar snackBar = SnackBar(
                                  content: Text('InValid Login'),
                                  action: SnackBarAction(
                                      label: 'Cancel',
                                      onPressed: () {
                                        ScaffoldMessenger.of(context)
                                            .clearSnackBars();
                                      }),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              }
                            }
                          },
                          color: Colors.grey.shade800,
                          child: const Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 224, 224, 224)),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account ? ',
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SignIn()));
                              },
                              child: Text(
                                'Sign Up ',
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              ),
            )),
      ),
    );
  }
}
