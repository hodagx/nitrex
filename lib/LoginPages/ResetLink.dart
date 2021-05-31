import 'package:flutter/material.dart';

class ResetLink extends StatefulWidget {
  @override
  _ResetLinkState createState() => _ResetLinkState();
}

class _ResetLinkState extends State<ResetLink> {
// the user name variable that will be fetched from APi
  final String textname = 'Candy';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // persistentFooterButtons: [
        //   Padding(
        //     padding: const EdgeInsets.only(left: 60.0, right: 60),
        //     child: Text("Copyright Ⓒ Nitrex. 2021 All rights reserved"),
        //   ),
        // ],
        body: Container(
          height: 900,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Color(0x0f0e1248),
          ),
          child: Container(
            color: Colors.white,
            margin: EdgeInsets.only(
              left: 40,
              right: 40,
            ),
            child: Column(
              children: [
                Container(
                  color: Color(0xff1a1a2a),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 69,
                        width: 169,
                        child: Image.asset('assets/ntxlogo2.png'),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      SizedBox(
                        height: 24,
                        width: 24,
                        child: Image.asset('assets/tlglogo.png'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        height: 24,
                        width: 24,
                        child: Image.asset('assets/ytblogo.png'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 280,
                  child: SingleChildScrollView(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Hey $textname, here's link to password reset page 🔑\nWe have received a request to have your password change for Nitrex.pro",
                            style: TextStyle(
                              fontFamily: 'MuseoSansCyrillic',
                              color: Color(0xff191c1f),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                            )),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'If you did not make this request, please ignore this email. To reset your password, click to Reset button or see direct link',
                          style: TextStyle(
                            color: Color(0xff191c1f),
                            fontFamily: 'MuseoSansCyrillic',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        ElevatedButton(
                          //ON Click go to reset pass page
                          onPressed: () {},
                          child: Text(
                            'Reset Password',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RichText(
                            text: new TextSpan(children: [
                          new TextSpan(
                              text:
                                  "Having trouble? If the above link does not work try copying and pasting this link into your browser: ",
                              style: TextStyle(
                                fontFamily: 'MuseoSansCyrillic',
                                color: Color(0xff191c1f),
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.normal,
                              )),
                          new TextSpan(
                              text:
                                  "https://www.nitrex.pro/account/reset/598af3-4334434-jdsjo3\n",
                              style: TextStyle(
                                fontFamily: 'MuseoSansCyrillic',
                                color: Color(0xff0093ff),
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.normal,
                              )),
                          new TextSpan(
                              text:
                                  "\nQuestions? Please let us know if there's anything we can help you with by hitting reply or by emailing ",
                              style: TextStyle(
                                fontFamily: 'MuseoSansCyrillic',
                                color: Color(0xff191c1f),
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.normal,
                              )),
                          new TextSpan(
                              text: "hello@nitrex.pro\n",
                              style: TextStyle(
                                fontFamily: 'MuseoSansCyrillic',
                                color: Color(0xff0093ff),
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.normal,
                              )),
                          new TextSpan(
                              text: "\nTo your success,\nThe Nitrex Team",
                              style: TextStyle(
                                fontFamily: 'MuseoSansCyrillic',
                                color: Color(0xff191c1f),
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.normal,
                              )),
                        ])),
                        SizedBox(
                          height: 30,
                        ),
                        RichText(
                            text: new TextSpan(children: [
                          new TextSpan(
                              text:
                                  "This email was sent to you as a registered member Beario teseque nisciuntius, suntium ex et arum ipid maior aute dipsum autem hicaestrum, quam exerspit iduciat iostore rchitae Ciliquia volest, this is a link accupta plamenihicia poreruptas debis entinci mention\n\nUse of the service and website is subject to our ",
                              style: TextStyle(
                                fontFamily: 'MuseoSansCyrillic',
                                color: Color(0xff191c1f),
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.normal,
                              )),
                          new TextSpan(
                              text: "Terms of Use ",
                              style: TextStyle(
                                fontFamily: 'MuseoSansCyrillic',
                                color: Color(0xff0093ff),
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.normal,
                              )),
                          new TextSpan(
                              text: "and ",
                              style: TextStyle(
                                fontFamily: 'MuseoSansCyrillic',
                                color: Color(0xff191c1f),
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.normal,
                              )),
                          new TextSpan(
                              text: "Privacy Policy\n",
                              style: TextStyle(
                                fontFamily: 'MuseoSansCyrillic',
                                color: Color(0xff0093ff),
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.normal,
                              )),
                          new TextSpan(
                              text: "\n© 2021 Nitrex, Inc. All right reserved",
                              style: TextStyle(
                                fontFamily: 'MuseoSansCyrillic',
                                color: Color(0xff191c1f),
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.normal,
                              )),
                        ]))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             SizedBox(
//                               height: 69,
//                               width: 169,
//                               child: Image.asset('assets/ntxlogo2.png'),
//                             ),
//                             SizedBox(
//                               width: 50,
//                             ),
//                             SizedBox(
//                               height: 24,
//                               width: 24,
//                               child: Image.asset('assets/tlglogo.png'),
//                             ),
//                             SizedBox(
//                               width: 20,
//                             ),
//                             SizedBox(
//                               height: 24,
//                               width: 24,
//                               child: Image.asset('assets/ytblogo.png'),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 50,
//                       ),
//                       new Text(
//                           "Hey $textname, here's link to password reset page 🔑\nWe have received a request to have your password change for Nitrex.pro",
//                           style: TextStyle(
//                             fontFamily: 'MuseoSansCyrillic',
//                             color: Color(0xff191c1f),
//                             fontSize: 22,
//                             fontWeight: FontWeight.w500,
//                             fontStyle: FontStyle.normal,
//                           )),
