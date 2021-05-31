import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool agree = false;
  bool _isHidden = true;
  late String email;

  TextEditingController password = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  // This function is triggered when the button is clicked

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
              height: 30,
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
                        "Sign Up to \nNitrex Systems",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null) {
                            return 'Enter an Email Adress';
                          }
                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                              .hasMatch(value)) {
                            return 'Enter a valid Email';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          email = value!;
                        },
                        cursorHeight: 24,
                        decoration: InputDecoration(
                          isCollapsed: true,
                          contentPadding: EdgeInsets.all(12),
                          hoverColor: Colors.blue,
                          hintText: 'Email Address...',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
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
                          controller: password,
                          validator: (value) {
                            //pass must contain Uppr Lower Num and any char
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
                            //NEED TO SHOW AND HIDE PASSWORD
                            suffixIcon: InkWell(
                                onTap: _togglePasswordView,
                                child: Icon(Icons.remove_red_eye)),
                            hintText: 'password...',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(4),
                              //NEED TO USE BORDERSIDE TO COLOR BORDER BLUE
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Container(
                        height: 65,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 134,
                              height: 45,
                              child: TextFormField(
                                //retriev the refferal code user  input
                                keyboardType: TextInputType.number,
                                obscureText: true,
                                cursorHeight: 24,
                                decoration: InputDecoration(
                                  isCollapsed: true,
                                  fillColor: Colors.green[100],
                                  filled: true,
                                  contentPadding: EdgeInsets.all(9),
                                  suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.check_circle)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 13,
                              height: 50,
                            ),
                            Container(
                              width: 200,
                              height: 65,
                              child: ListTile(
                                contentPadding: EdgeInsets.only(
                                  bottom: 15,
                                ),
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    'https://cdn.zeplin.io/5c016f966ba3dc0221c970e2/assets/2f4ea730-bd3c-4392-bdc7-451dc36f6ea1.png',
                                  ),
                                ),
                                //API DATA EMAIL INVITOR
                                subtitle: Text(
                                  "dataemail@yahoo.com",
                                  style: TextStyle(fontSize: 12),
                                ),
                                title: Text(
                                  "Exmple Name",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Material(
                            child: Checkbox(
                              value: agree,
                              onChanged: (value) {
                                setState(() {
                                  agree = value!;
                                });
                              },
                            ),
                          ),
                          Text(
                            'I have read and agree with',
                            overflow: TextOverflow.ellipsis,
                          ),
                          TextButton(
                            onPressed: () {
                              //REDIRECT TO TERMS AND AGREEMENT PAGE
                              print("You accepted the agreement..");
                            },
                            child: Text("Offer Agreement",
                                style: TextStyle(
                                  color: Colors.blue,
                                )),
                          )
                        ],
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 42,
                        child: ElevatedButton(
                            //when box checked allow to click n check form validity same time
                            onPressed: agree ? _doSomething : null,
                            child: Text("Sign Up")),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Have an Account?"),
                          TextButton(
                            //REDIRECT TO LOGIN PAGE
                            onPressed: () {
                              print("go to login page");
                            },
                            child: Text(
                              "Sign In",
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

  void _doSomething() {
    if (_formkey.currentState!.validate()) {
      print("Go to Home Page");
      //SEND TO Home PAGE after Auth API

      return;
    } else {
      print("unSuccessfull pass or user Email wrong");
    }
  }
}
