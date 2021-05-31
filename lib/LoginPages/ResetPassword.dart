import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController confirmpassword = TextEditingController();
  TextEditingController password = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

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
          child: SingleChildScrollView(
            child: Container(
              height: 416,
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
                padding: const EdgeInsets.only(left: 37.0, right: 37),
                child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 38,
                      ),
                      Text(
                        'Reset Password',
                        style: TextStyle(
                          color: Color(0xff191c1f),
                          fontSize: 24,
                          fontFamily: 'MuseoSansCyrillic',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //Text MUST BE ENGLISH
                      Text(
                        'In sit amet ligula eu lectus ullamcorper venenatis vel ut ligula. Curabitur vitae feugiat nunc,',
                        style: TextStyle(
                          color: Color(0xff191c1f),
                          fontSize: 16,
                          fontFamily: 'MuseoSansCyrillic',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Tooltip(
                        message: '''* Minimum 8 characters
                                  * At least 1 UPPER CASE
                                  * At least 1 number''',
                        waitDuration: Duration(milliseconds: 500),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
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
                          obscureText: true,
                          cursorHeight: 24,
                          decoration: InputDecoration(
                            isCollapsed: true,
                            contentPadding: EdgeInsets.all(12),
                            hintText: 'password...',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 20),
                      Container(
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: confirmpassword,
                          validator: (value) {
                            bool passValid = RegExp(
                                    "^(?=.{8,32}\$)(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).*")
                                .hasMatch(value!);
                            if (value.isEmpty) {
                              return 'enter a password';
                            } else if (!passValid) {
                              return 'must contain(uppercase,lowercase,number)';
                            } else if (password.text != confirmpassword.text) {
                              return 'Password Not Match';
                            } else {
                              print(password.text);
                              print(confirmpassword.text);
                              return null;
                            }
                          },
                          obscureText: true,
                          cursorHeight: 24,
                          decoration: InputDecoration(
                            isCollapsed: true,
                            contentPadding: EdgeInsets.all(12),
                            hintText: 'password...',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 42,
                        child: ElevatedButton(
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {
                                print("Successful Reset");
                                //SEND TO LOGIN PAGE

                                return;
                              } else {
                                print("unSuccessfull");
                              }
                            },
                            child: Text("Accept")),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}
