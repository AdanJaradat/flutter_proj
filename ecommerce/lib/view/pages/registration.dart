import 'package:ecommerce/model/user.dart';
import 'package:ecommerce/view/components/custom_field.dart';
import 'package:ecommerce/view/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  GlobalKey<FormState> _formKey = GlobalKey();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  String? genderValue;
  errorMessage(String? label) {
    switch (label) {
      case 'Name':
        //'Enter your name':
        return 'Name is empty';
      case 'Email':
        return 'Email is empty';
      case 'Password':
        return 'Password is empty';
      case 'Phone':
        return 'Phone is empty';
      default:
        return 'value is empty';
    }
  }

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
                        const SizedBox(height: 40),
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(22)),
                          child: Image.asset(
                            'images/logo.jpg',
                            fit: BoxFit.contain,
                            width: 100,
                            height: 100,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Vintage Home Furniture',
                          style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey.shade800),
                        ),
                        const SizedBox(height: 50),
                        CustomField(
                          label: 'Name',
                          icon: const Icon(Icons.person_2_outlined),
                          controller: _nameController,
                          onValidator: (value) {
                            if (value!.isEmpty) {
                              return 'Name is empty';
                            }
                          },
                          onSavedClick: (value) {},
                        ),
                        const SizedBox(height: 25),
                        CustomField(
                          label: 'Email',
                          icon: const Icon(Icons.email_outlined),
                          controller: _emailController,
                          onValidator: (value) {
                            if (value!.isEmpty) {
                              return 'Email is empty';
                            }
                            for (int i = 0; i < User.users.length; i++) {
                              if (User.users[i]['email'] ==
                                  _emailController.text) {
                                return 'this is already exist';
                              }
                            }
                          },
                          onSavedClick: (value) {},
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
                          onSavedClick: (value) {},
                        ),
                        const SizedBox(height: 25),
                        CustomField(
                          label: 'Phone',
                          icon: const Icon(Icons.phone),
                          controller: _phoneController,
                          onValidator: (value) {
                            if (value!.isEmpty) {
                              return 'Phone is empty';
                            }
                          },
                          onSavedClick: (value) {},
                        ),
                        const SizedBox(height: 35),
                        RadioListTile(
                            activeColor: Colors.grey[800],
                            title: const Text('Male'),
                            value: 'male',
                            groupValue: genderValue,
                            onChanged: (value) {
                              setState(() {
                                genderValue = value;
                              });
                            }),
                        RadioListTile(
                            activeColor: Colors.grey[800],
                            title: const Text('Female'),
                            value: 'female',
                            groupValue: genderValue,
                            onChanged: (value) {
                              setState(() {
                                genderValue = value;
                              });
                            }),
                        const SizedBox(height: 15),
                        MaterialButton(
                          onPressed: () {
                            bool isSignIn = false;
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              isSignIn = true;
                              Map map = {
                                'name': _nameController.text,
                                'email': _emailController.text,
                                'password': _passwordController.text,
                                'phone': _phoneController.text,
                                'gender': genderValue
                              };
                              User.users.add(map);
                            }
                            if (isSignIn) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Login()));
                              SnackBar snackBar = SnackBar(
                                content: Text('Successfully Sign In'),
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
                              //snackbar
                              SnackBar snackBar = SnackBar(
                                content: Text('InValid Sign In'),
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
                          },
                          color: Colors.grey.shade800,
                          child: const Text(
                            'Sign In',
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
                              'Already on Vintage Home Furniture?  ',
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Login()));
                              },
                              child: Text(
                                'Login',
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
