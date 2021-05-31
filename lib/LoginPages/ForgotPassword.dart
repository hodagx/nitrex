import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        persistentFooterButtons: [
          Padding(
            padding: const EdgeInsets.only(left: 60.0, right: 60),
            child: Text("Copyright Ⓒ Nitrex. 2021 All rights reserved"),
          ),
        ],
/////////////////////APPBAR + DRAWER START ////////////////////
        appBar: AppBar(
          backgroundColor: Color(0xff1a1a2a),
          leading: Image(
            image: AssetImage('assets/ntxlogo3.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
        endDrawer: Container(
          width: 310,
          height: 812,
          decoration: new BoxDecoration(color: Color(0xff0093ff)),
          child: Column(
            children: [
              //ON CLICK REDiRECT TO THE SCREENS
              ListTile(
                title: Text(
                  "About",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  print("go to ..");
                },
              ),
              ListTile(
                title: Text(
                  "Easy Prices",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  print("go to ..");
                },
              ),
              ListTile(
                title: Text(
                  "Features",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  print("go to ..");
                },
              ),
              ListTile(
                title: Text(
                  "How to Start",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  print("go to ..");
                },
              ),
              ListTile(
                title: Text(
                  "Testimonials",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  print("go to ..");
                },
              ),
              ListTile(
                title: Text(
                  "FAQ",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  print("go to ..");
                },
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 200,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: (Border.all(
                      color: Colors.white,
                    )),
                  ),
                  //Go To Login PAGE
                  child: TextButton(
                      onPressed: () {
                        print("login page..");
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 200,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    border: (Border.all(
                      color: Colors.white,
                      width: 1,
                    )),
                  ),
                  child: TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      //Go To BUY PAGE?
                      onPressed: () {
                        print("Buy Now Page..");
                      },
                      child: Text(
                        "Buy Now",
                        style: TextStyle(color: Colors.blue),
                      )),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 135,
                      height: 50,
                      child: ListTile(
                        //On Tap Translate The APP To the selected Language
                        onTap: () {
                          print("selected lang");
                        },
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/uk.png'),
                        ),
                        title: Text("English"),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: ListTile(
                        //On Tap Translate The APP To the selected Language
                        onTap: () {
                          print("selected lang");
                        },
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/rus.png'),
                        ),
                        title: Text("Русский"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 135,
                    height: 50,
                    child: ListTile(
                      //On Tap Translate The APP To the selected Language
                      onTap: () {
                        print("selected lang");
                      },
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/chin.png'),
                      ),
                      title: Text(
                        "中文",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 160,
                    height: 50,
                    child: ListTile(
                      //On Tap Translate The APP To the selected Language
                      onTap: () {
                        print("selected lang");
                      },
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/ukr.png'),
                      ),
                      title: Text("Українська",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
////////////////////////END OF DRAWER/////////////////
        body: Center(
            child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/bkgpsswd.png'), fit: BoxFit.cover)),
          child: Container(
            height: 362,
            margin: EdgeInsets.only(
              left: 24,
              right: 24,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Color(0x14000000),
                  offset: Offset(0, 10),
                  blurRadius: 20,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24),
              child: Column(
                children: [
                  SizedBox(
                    height: 58,
                  ),
                  Text(
                    "Forgot your password?",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Enter the email address on which you are registered and we will send you a link to reset your password.",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    // create validator key to retriev email user  input
                    cursorHeight: 24,
                    decoration: InputDecoration(
                      isCollapsed: true,
                      contentPadding: EdgeInsets.all(12),
                      hoverColor: Colors.blue,
                      hintText: 'Email Address...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 42,
                    child: ElevatedButton(
                        //Send Email API Reset
                        onPressed: () {
                          print("password reset sent to email");
                        },
                        child: Text("Recovery")),
                  ),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
