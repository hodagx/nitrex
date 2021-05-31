import 'package:flutter/material.dart';

class Termsofuse extends StatefulWidget {
  @override
  _TermsofuseState createState() => _TermsofuseState();
}

class _TermsofuseState extends State<Termsofuse> {
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
          leading: Container(
            child: SizedBox(child: Image.asset('assets/ntxlogo2.png')),

            // fit: BoxFit.fitWidth,
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
          child: ListView(
            padding: EdgeInsets.only(left: 20, right: 20),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 70, bottom: 30),
                child: Text(
                  'Terms of Use',
                  style: TextStyle(
                    color: Color(0xff191c1f),
                    fontSize: 32,
                    fontFamily: 'MuseoSansCyrillic',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Text(
                '''Before using or accessing any part of the Service «NITREX.PRO», please read attentively the terms and conditions of this License Agreement. Acceptance of the terms and conditions of this License Agreement is considered complete and irrevocable acceptance of all of the terms and of this License Agreement by the Licensee.
                ''',
                style: TextStyle(
                  color: Color(0xff191c1f),
                  fontSize: 16,
                  fontFamily: 'MuseoSansCyrillic',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Nitrex Technologies Software corp. is a software development company and does not provide nor offers any kind of financial, investment, brokerage, trading and data feed services in any local or international currency, stock market or any other financial market, nor is Nitrex Technologies Software involved directly or indirectly in any respect in any commission based payments concerning any trading operations whatsoever.',
                style: TextStyle(
                  color: Color(0xff191c1f),
                  fontSize: 16,
                  fontFamily: 'MuseoSansCyrillic',
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                '''

1. Terms and Definitions
                ''',
                style: TextStyle(
                  color: Color(0xff191c1f),
                  fontSize: 16,
                  fontFamily: 'MuseoSansCyrillic',
                  fontWeight: FontWeight.w700,
                ),
              ),
              RichText(
                  text: new TextSpan(children: [
                new TextSpan(
                    text: "Service «NITREX.PRO», Service",
                    style: TextStyle(
                      fontFamily: 'MuseoSansCyrillic',
                      color: Color(0xff191c1f),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    )),
                new TextSpan(
                    text:
                        '''- a set of computer programs and databases is accessible at this electronic address: https://nitrex.pro/, the main function of which is the organization of software implementation.
                        ''',
                    style: TextStyle(
                      fontFamily: 'MuseoSansCyrillic',
                      color: Color(0xb3191c1f),
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.normal,
                    )),
              ])),
              RichText(
                  text: new TextSpan(children: [
                new TextSpan(
                    text: "Licensor",
                    style: TextStyle(
                      fontFamily: 'MuseoSansCyrillic',
                      color: Color(0xff191c1f),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    )),
                new TextSpan(
                    text:
                        '''- Company Nitrex Technologies Software. Licensor is the rightsholder of the Service.
                        ''',
                    style: TextStyle(
                      fontFamily: 'MuseoSansCyrillic',
                      color: Color(0xb3191c1f),
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.normal,
                    )),
              ])),
              RichText(
                  text: new TextSpan(children: [
                new TextSpan(
                    text: "Licensee",
                    style: TextStyle(
                      fontFamily: 'MuseoSansCyrillic',
                      color: Color(0xff191c1f),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    )),
                new TextSpan(
                    text:
                        '''- an individual using the Service to purchase software. ETC
                       ''',
                    style: TextStyle(
                      fontFamily: 'MuseoSansCyrillic',
                      color: Color(0xb3191c1f),
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.normal,
                    )),
              ])),
              RichText(
                  text: new TextSpan(children: [
                new TextSpan(
                    text: "License ",
                    style: TextStyle(
                      fontFamily: 'MuseoSansCyrillic',
                      color: Color(0xff191c1f),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    )),
                new TextSpan(
                    text: '''- this License Agreement.
                    ''',
                    style: TextStyle(
                      fontFamily: 'MuseoSansCyrillic',
                      color: Color(0xb3191c1f),
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.normal,
                    )),
              ])),
              RichText(
                  text: new TextSpan(children: [
                new TextSpan(
                    text: "Personal Account",
                    style: TextStyle(
                      fontFamily: 'MuseoSansCyrillic',
                      color: Color(0xff191c1f),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    )),
                new TextSpan(
                    text:
                        '''- multi-functional virtual desktop of the Licensee, available to the Licensee after entering their account data, used for the use of the Service by the Licensee and the interaction of the Parties under the License.
                        ''',
                    style: TextStyle(
                      fontFamily: 'MuseoSansCyrillic',
                      color: Color(0xb3191c1f),
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.normal,
                    )),
              ])),
              RichText(
                  text: new TextSpan(children: [
                new TextSpan(
                    text: "Parties ",
                    style: TextStyle(
                      fontFamily: 'MuseoSansCyrillic',
                      color: Color(0xff191c1f),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    )),
                new TextSpan(
                    text: '''- the Licensor and the Licensee.
                    ''',
                    style: TextStyle(
                      fontFamily: 'MuseoSansCyrillic',
                      color: Color(0xb3191c1f),
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.normal,
                    )),
              ])),
              Text(
                '''
                
THE SUBJECT MATTER
                ''',
                style: TextStyle(
                  color: Color(0xff191c1f),
                  fontSize: 16,
                  fontFamily: 'MuseoSansCyrillic',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                  '''2.1 The Licensor grants the Licensee, under the terms and conditions of this License, the nonexclusive right to use the Service.

2.2 The Licensee has the right to use the Service by any legal means in accordance with the purpose of the Service described in the definition of the Service, including:

the right to access to the Service via the Internet-browser at the network address https://nitrex.pro/ and reproduction of the Service in the browser;

the right to use of the features of the Service available in the Licensee's Personal Account.

2.3 The period during which the Licensee is granted the right to use the Service by the Licensor according to this License is equal to the period for which the Licensor has exclusive rights to the Service.

2.4 This License is concluded by the acceptance by the Licensee of its conditions. Acceptance is considered a successful registration of the Licensor in a Personal Account.

2.5 Accepting conditions of the present License Licensee confirms that has reviewed the Notification of Risks stated in the Exhibit 2.'''),
              Text(
                '''
                
THE PERSONAL ACCOUNT OF THE LICENSEE
                ''',
                style: TextStyle(
                  color: Color(0xff191c1f),
                  fontSize: 16,
                  fontFamily: 'MuseoSansCyrillic',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                  '''3.1 For the using the Service under this License the Licensee is granted access to the Personal Account. The Licensee must fill in and upload the registration form available at this electronic address: https://nitrex.online.

3.2 All instruments necessary to use the Service, including to prepare documents needed as part of the License and to exchange information will be available in the Personal Account.

3.3 The choice of strategy of using the Service is carried out by Licensee through the use of the Personal Account.

3.4 Processing of the personal data is carried out by the Service according to the Personal Data Protection Policy stated in the Exhibit 1.'''),
              Text(
                '''

THE LICENSEE'S REWARD
''',
                style: TextStyle(
                  color: Color(0xff191c1f),
                  fontSize: 16,
                  fontFamily: 'MuseoSansCyrillic',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                  '''4.1 For attracting new Licensees, the Licensor should pay the License a fee of 10% of the remuneration received by the Licensor from the new Licensee.

4.2 Remuneration specified in clause 4.1. Licenses are credited to the Licensee's Personal account. The Licensee has the right to use the remuneration to pay for right to use the Services in the manner provided in this License, as well as to paying for the right to use the Service in favor of other Licensees.'''),
              Text(
                '''

VALIDITY, MODIFICATION AND TERMINATION OF THE CONTRACT
''',
                style: TextStyle(
                  color: Color(0xff191c1f),
                  fontSize: 16,
                  fontFamily: 'MuseoSansCyrillic',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                  '''5.1 This Contract shall become effective on the date on which it is accepted by the Licensee.

5.2 Either Party has the right to unilaterally terminate this License at any time by removal the Personal Account.

In case of removal of the Personal Account by the Licensee, the reward paid before the removal of the Personal Account under the License shall not be returned to the Licensee.

5.3 All changes and additions to this License Licensor may be performed unilaterally. In the event that at the expiration of thirty (30) calendar days from the date of publication at the Internet https://nitrex.pro/oferta Licensee did not refuse of the change, by giving notice to the Licensor, changes considered accepted by Licensee.

5.4 The Licensee can assign his rights and obligations under this License to another individual only with the consent of the Licensor.'''),
              Text(
                '''

LIABILITIES AND WARRANTIES OF THE PARTIES
''',
                style: TextStyle(
                  color: Color(0xff191c1f),
                  fontSize: 16,
                  fontFamily: 'MuseoSansCyrillic',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                  '''6.1 The Parties are responsible for the non-performance or improper performance of this License in accordance with the law of the state of registration of the Licensor..

6.2 No liability for non-performance or improper performance of this License will arise if there is an event of force majeure causing such non-performance or improper performance.

6.3 Licensor shall not be liable to another for indirect, incidental, consequential or special damages, including but not limited to lost profits, arising from or relating to any breach of this License, regardless of any notice of the possibility of such damages.

6.4 Under this License, the Service is provided on an "as is" basis. Licensor makes no representations and /or warranties with respect to the error-free and uninterrupted operation of the Service or certain features, compliance of the Service with specific goals and expectations of the Licensee, does not provide any other representations and (or) warranties not expressly stated in this License.

The Licensee is aware of the most important features of the Service, the right to use which is granted under the terms of this License. The Licensee shall bear the risk of compliance of the features of the Service with his / her wishes and needs.

6.5 The Licensee guarantees that it will use the Service in strict compliance with the terms of this License, the terms of all applicable rules and documents published in the relevant sections of the Service, and will not in any way violate Licensor's rights with respect to the Service and any of its elements.

6.6 The Licensee guarantees the confidentiality of the account data for access to the Personal Account.

6.7 The Licensee has the right to decide whether the actions of using the Service is acceptable, and whether the actions of using violates this License. The Licensor may removal the Personal Account or block Licensee's access to it at any time - in its sole discretion - with or without notice to Licensee, and not execute this License from such time on.
'''),
              Text(
                '''DISPUTE RESOLUTION AND GOVERNING LAW
''',
                style: TextStyle(
                  color: Color(0xff191c1f),
                  fontSize: 16,
                  fontFamily: 'MuseoSansCyrillic',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                  '''7.1 In the event of any dispute, the Parties shall take all the reasonable measures for resolution of such disputes by good faith negotiations within sixty (60) days after notice of one of the Parties by another Party. Without prejudice to the above, each Party has the right to initiate proceedings in court for infringement of its intellectual property rights or to seek injunctive relief. In the event the Parties are unable to resolve such dispute within such sixty (60) day period, each Party may seek arbitration in accordance with provisions of clause 7.2. of this License.

7.2 Any dispute arising out of or in connection with this License, including any question regarding its existence, validity or termination, shall be referred to and finally resolved by the London Court of International Arbitration (LCIA) under the LCIA Rules, which Rules are deemed to be incorporated by reference into this clause. The number of arbitrators shall be one. The seat, or legal place, of arbitration shall be the city of London, UK. The language to be used in the arbitral proceedings shall be English.

7.3 If any Article or part thereof of this License is declared invalid by any arbitrage, court, official body of the competent jurisdiction over either Lisencor or Lisencee, then such declaration shall not affect the remainder of the Article or other Articles. To the extent possible the Parties shall revise such invalidated Article or part thereof in a manner that will render such provision valid without impairing the Parties’ original interest.

7.4 This License shall be governed by and construed in accordance with the substantive law of England and Wales.'''),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  '''                              ANNEX 1.
    PERSONAL DATA PROTECTION POLICY''',
                  style: TextStyle(
                    color: Color(0xff191c1f),
                    fontSize: 16,
                    fontFamily: 'MuseoSansCyrillic',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                '''This Policy governs relations between the Parties on the processing of personal data. For the purposes of this Policy Licensor should be considered as controller, Licensee – as data subject. This Policy is the integral part of the License agreement.''',
                style: TextStyle(
                  color: Color(0xff191c1f),
                  fontSize: 16,
                  fontFamily: 'MuseoSansCyrillic',
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text('''

Licensor will comply with all requirements of the applicable legislation, in particular, the European Union’s General Data Privacy Regulation [Regulation (EU) 2016/679] (GDPR).

The terms used in this Policy shall have the meanings set forth in this Policy:
Personal data – any information relating to an identified or identifiable natural person (‘data subject’); an identifiable natural person is one who can be identified, directly or indirectly, in particular by reference to an identifier such as a name, an identification number, location data, an online identifier.
Processing – any operation or sets of operations performed on Personal data.

Personal data is processed in strict accordance with the following principles:
lawfulness, fairness and transparency;
purpose limitation;
data minimisation;
accuracy;
storage limitation;
integrity and confidentiality.

Taking into account the state of the art, the costs of implementation and the nature, scope, context and purposes of Processing as well as the risk of varying likelihood and severity for the rights and freedoms of natural persons, Licensor shall implement appropriate technical and organizational measures to ensure a level of security appropriate to that risk, including, as appropriate, the measures referred to in Article 32(1) of the GDPR.

Licensee has the right, inter alia, of access to the Personal data obtained from him/her, rights to rectification, erasure, data portability of Personal data in accordance with procedure, terms and conditions established by GDPR.

Licensor shall notify Licensee without undue delay upon Licensor becoming aware of a Personal data breach affecting Licensee Personal data, providing Licensee with sufficient information protect his/her rights. Licensor shall co-operate with Licensee and take such reasonable commercial steps to assist in the investigation, mitigation and remediation of each such Personal data breach.

The Parties agree that on the termination of the provision of data processing services, Licensor shall, at the choice of the Licensee, return all the Personal data transferred and the copies thereof to the Licensee or shall destroy all the Personal data and certify to the Licensee that it has done so, unless legislation imposed upon the Licensor prevents it from returning or destroying all or part of the Personal data transferred. In that case, the Licensor warrants that it will guarantee the confidentiality of the Personal data transferred and will not actively process the Personal data transferred anymore.'''),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  '''                              ANNEX 2.
                NOTIFICATION OF RISKS''',
                  style: TextStyle(
                    color: Color(0xff191c1f),
                    fontSize: 16,
                    fontFamily: 'MuseoSansCyrillic',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                  '''The Client for the purposes of this Notice is any person using or planning to use our Service.
              
The purpose of this Notification is to warn of possible losses related to the conclusion of such kind of deals. Activities on the financial market are inevitably related to numerous risks that derive out of the very nature of the market. Prior to starting such activities, it is essential to acquaint oneself with this Notification of risks as well as with substance of License agreement. This Notification aims to inform Client about risks related to activities at FOREX market as well as to warn client of losses they can potentially incur due to such activities. Risk is interpreted as a possibility of an event that can result in significant financial losses for Client. Risks listed in the text of this Notification, License and other documents are not comprehensive. Due to the specifics of financial market activities and great versatility of trading situations, there is a potential for new risks that may arise that are not included into the text of this Notification and License. Marginal trade by its very nature can increase both profits and losses. Client can incur significant losses if the price for the position he opens changes unfavorably. However, Client cannot lose an amount exceeding that in their brokerage account. Trading on the financial market implies a very high risk and may not be suitable for all clients. Before Client makes a decision about trading in financial market they must carefully examine their investment goals, experience and acceptable risks. There is a chance to lose original investment, partially or entirely. We do not provide any guarantees or does not make any statements concerning the receipt of financial profits or any other desirable outcome of trading activity at FOREX international currency market. Client accepts that information received from us or through our products and services cannot be perceived as recommendation to carry out a transaction nor a guarantee of receiving profits from of trading activity at FOREX international currency market. Technical risk is interpreted as a possibility for client to incur significant losses due to malfunction of technical devices or communication channels used to operate at FOREX international currency market. The aforementioned malfunction can be both hardware or software related and can caused by both external reason or by Cient’s failure to follow the Service usage guidelines.

Client acknowledges that a trading transaction made using of our services may lead to total loss of original investment. Client must not invest the funds they can not afford to lose. Investments in the financial market are considered high risk and there is a possibility that due to rate fluctuations the investor may never return the invested funds.

              '''),
            ],
          ),
        )),
      ),
    );
  }
}
