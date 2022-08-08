import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:kto_oxygen/about_me.dart';
import 'package:kto_oxygen/biography.dart';
import 'package:kto_oxygen/phone.dart';
import 'package:kto_oxygen/screens/note_screen.dart';
import 'package:marquee/marquee.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await Locales.init(['en', 'my']);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LocaleBuilder(
      builder: (locale) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'K.T.O Oxygen',
        localizationsDelegates: Locales.delegates,
        supportedLocales: Locales.supportedLocales,
        locale: locale,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imageList = [
    'images/background.png',
    'images/1.png',
    'images/2.png',
    'images/3.png',
    'images/4.png',
    'images/5.png',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialization();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LocaleText('localization'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const Biography()));
            },
            icon: const Icon(Icons.menu_book),
            iconSize: 30.0,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => AboutMe()));
            },
            icon: const Icon(Icons.info_outline),
            iconSize: 30.0,
          ),
        ],
        backgroundColor: const Color(0xFF2B60DE),
      ),
      body: Column(
        children: [
          CarouselSlider(
              items: imageList
                  .map((e) => ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.asset(
                              e,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ))
                  .toList(),
              options: CarouselOptions(
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  autoPlay: true)),
          Container(
            width: double.infinity,
            height: 30,
            child: Marquee(
              text:
                  'အဖွဲ့အစည်းပျက်ကြောင်းတရား။    ။ တာဝန်မသိ၊ သစ္စာမရှိ၊ လုပ်အားမပေး၊ ဖိတ်ခေါ်မလာ၊ ဘေးမှာအပြစ်ပြော၊ စိတ်ထားမမှန် ဤငါးတန် မှတ်ရန်အဖွဲ့အစည်းပျက်ကြောင်းတည်း။',
              style: const TextStyle(fontWeight: FontWeight.bold),
              scrollAxis: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.start,
              blankSpace: 30.0,
              velocity: 100.0,
              pauseAfterRound: const Duration(seconds: 1),
              startPadding: 10.0,
              accelerationDuration: const Duration(seconds: 1),
              accelerationCurve: Curves.linear,
              decelerationDuration: const Duration(milliseconds: 500),
              decelerationCurve: Curves.easeOut,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 1,
                ),
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const Phone()));
                    },
                    child: Card(
                        elevation: 10,
                        color: const Color(0xFF2B60DE),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(children: [
                          Expanded(
                              flex: 3,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Center(
                                        child: Icon(
                                      Icons.people,
                                      size: 100,
                                      color: Colors.white,
                                    )),
                                  ])),
                          Expanded(
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blueAccent,
                                  ),
                                  child: const Center(
                                      child: LocaleText(
                                    'phone',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ) //custom text and style
                                      )))
                        ])),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const NoteApp()));
                    },
                    child: Card(
                        elevation: 10,
                        color: const Color(0xFF2B60DE),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(children: [
                          Expanded(
                              flex: 3,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Center(
                                        child: Icon(
                                      Icons.note_add_rounded,
                                      size: 100,
                                      color: Colors.white,
                                    )),
                                  ])),
                          Expanded(
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blueAccent,
                                  ),
                                  child: const Center(
                                      child: LocaleText(
                                    'note',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ) //custom text and style
                                      )))
                        ])),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'အောက်စီဂျင်ပြတ်၍ အသက်မသေစေရ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF2B60DE),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const SettingScreen()));
        },
        child: const Icon(Icons.language_outlined),
      ),
    );
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 3));
    FlutterNativeSplash.remove();
  }
}

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Locales.string(context, 'setting')),
        backgroundColor: const Color(0xFF2B60DE),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () => Locales.change(context, 'en'),
            title: const LocaleText('english'),
          ),
          ListTile(
            onTap: () => Locales.change(context, 'my'),
            title: const LocaleText('myanmar'),
          ),
        ],
      ),
    );
  }
}
