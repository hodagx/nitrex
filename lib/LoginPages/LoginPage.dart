import 'package:flutter/material.dart';
// import 'package:nitrex/LoginPages/api.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isHidden = true;
  // late String email;
  String message = '';

  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        Padding(
          padding: const EdgeInsets.only(left: 60.0, right: 60),
          child: Text("Copyright Ⓒ Nitrex. 2021 All rights reserved"),
        ),
      ],
      body: SafeArea(
          child: Container(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/ntxlogo3.png',
                  height: 160.7,
                  width: 119.3,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 25.0),
              child: Container(
                child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Log In to \nNitrex Systems",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: emailController,
                        //  retriev email user  input
                        validator: (value) {
                          // if (value == null) {
                          //   return 'Please enter an Email';
                          // }
                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                              .hasMatch(value!)) {
                            return 'Please enter a valid Email';
                          }
                          return null;
                        },
                        // onSaved: (value) {
                        //   email = value!;
                        // },
                        cursorHeight: 24,
                        decoration: InputDecoration(
                          isCollapsed: true,
                          contentPadding: EdgeInsets.all(12),
                          hoverColor: Colors.blue,
                          hintText: 'Email Adress...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.2),
                      Tooltip(
                        message: '''* Minimum 8 characters
                                  * At least 1 UPPER CASE
                                  * At least 1 number''',
                        child: TextFormField(
                          controller: passwordController,
                          validator: (value) {
                            bool passValid = RegExp(
                                    "^(?=.{8,32}\$)(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).*")
                                .hasMatch(value!);
                            if (value.isEmpty) {
                              return 'enter a password';
                            } else if (!passValid) {
                              return 'must contain(uppercase,lowercase,number)';
                            }
                          },
                          obscureText: _isHidden,
                          cursorHeight: 24,
                          decoration: InputDecoration(
                            isCollapsed: true,
                            contentPadding: EdgeInsets.all(12),
                            suffixIcon: InkWell(
                                onTap: _togglePasswordView,
                                child: Icon(Icons.remove_red_eye)),
                            hintText: 'password...',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.9,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              //Redirect to forgot password page
                            },
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  textBaseline: TextBaseline.alphabetic),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 42,
                        child: ElevatedButton(
                            onPressed: () async {
                              //REDIRECT HOME APP PAGE
                              // print("Login pressed");
                              if (_formkey.currentState!.validate()) {
                                // print("Go to Home Page");
                                var email = emailController.text;
                                var password = passwordController.text;
                                print(email);
                                print(password);
                                //SEND TO Home PAGE after Auth API
                                // setState(() {
                                //   message = 'please wait ..';
                                // });
                                // var rsp = await loginUser(email, password);
                                // print(rsp);
                                // if (rsp.containsKey('username')) {
                                //   setState(() async {
                                //     return message = rsp['id'];
                                //   });
                                // } else {
                                //   setState(() {
                                //     message = 'Failed Login';
                                //   });
                                // }

                                return;
                              } else {
                                print("unSuccessfull pass or user Email wrong");
                              }
                            },
                            child: Text("Log In")),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Not a member?"),
                          TextButton(
                            onPressed: () {
                              //REDIRECT SIGNUP PAGE
                              print("Go to Sign Up page");
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.3,
            ),
          ],
        ),
      )),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
