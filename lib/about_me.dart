import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
   AboutMe({Key? key}) : super(key: key);
  var myPhNumber = ['09402991411'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Locales.string(context, 'phone')),
        backgroundColor: const Color(0xFF2B60DE),
      ),
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage('images/my_pp.jpg'),
              ),
              const Text(
                'Soe Paing',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'TAI YOUTH MONYWA',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.teal.shade100,
                  fontSize: 20,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InkWell(
                onTap: (){
                  FlutterPhoneDirectCaller.callNumber("09402991411");
                },
                child: Card(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: const Icon(
                      Icons.phone,
                      color: Colors.blue,
                    ),
                    title: Text(
                      '+959402991411',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        color: Colors.blue.shade900,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  String url = 'https://www.facebook.com/jaisoepaing';
                  if (await canLaunch(url)){
                    await launch(url);
                  }
                },
                child: Card(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: const Icon(
                      Icons.facebook,
                      color: Colors.blue,
                    ),
                    title: Text(
                      'facebook.com/jaisoepaing',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        color: Colors.blue.shade900,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  String toEmail = 'jaisoepaing@gmail.com';
                  String subject = 'About K.T.O Oxygen version 1.0 App';
                  String message = 'Hello Soe Paing!\n\n ';

                  String? encondingQueryParameters(Map<String, String> params){
                    return params.entries.map((e) => '${Uri.encodeComponent(e.key)} = ${Uri.encodeComponent(e.value)}').join('&');
                  }
                  final Uri emailUri =Uri(
                    scheme: 'mailto',
                    path: toEmail,
                    query: encondingQueryParameters(<String, String>{'subject': subject, 'message': message}),
                  );
                  if (await canLaunch(emailUri.toString())){
                    launch(emailUri.toString());
                  }
                },
                child: Card(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: const Icon(
                      Icons.mail,
                      color: Colors.blue,
                    ),
                    title: Text(
                      'jaisoepaing@gmail.com',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        color: Colors.blue.shade900,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void openBrowserURL({required String url, required bool inApp}) {}
}
