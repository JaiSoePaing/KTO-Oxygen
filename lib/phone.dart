import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class Phone extends StatefulWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  State<Phone> createState() => _PhoneState();
}

List<String> listNames = [
  "ဦးမင်းကြည်",
  "ဦးဝင်းနောင်",
  "Dr အောင်ဆန်းဌေး",
  "ဦးသာဌေး",
  "ဆရာ ဦးသန်းထွန်း",
  "ဦးဇော်မိုင်",
  "ဦးနေဝင်း",
  "ဦးဝင်းမြင့်ဦး",
  "ဦးခင်မောင်ထွေး",
  "ဦးစိုင်းမျိုးအောင်",
  "ဦးတင်အောင်မြင့်",
  "ဦးခိုင်မင်း",
  "ဦးတင်မောင်လွင်",
  "ဦးကျော်ဌေး",
  "ဦးတင်ဝင်းတိုး",
  "ဦးထိန်ဝင်း",
  "ဦးသိန်းဝင်း",
  "ဦးအောင်မျိုး",
  "ဦးချမ်းအေး",
  "ဦးအောင်ရဲကျော်",
  "ဦးမင်းလွင်",
  "ဦးဘိုစီ",
  "ဦးမောင် (ပွိုင့်သံပန်း)",
  "ဦးထွန်း (ထွန်းသံပန်း)",
];

List<String> listPhone = [
  "နာယက",
  "နာယက",
  "နာယက",
  "နာယက",
  "နာယက",
  "ဥက္ကဌ",
  "ဒုဥက္ကဌ",
  "အတွင်းရေးမှူး (၁)",
  "အတွင်းရေးမှူး (၂)",
  "ဘဏ္ဍာရေးမှူး (၁)",
  "ဘဏ္ဍာရေးမှူး (၂)",
  "ဘဏ္ဍာရေးမှူး (၃)",
  "စာရင်းစစ် (၁)",
  "စာရင်းစစ် (၂)",
  "စာရင်းစစ် (၃)",
  "မန်နေဂျာ",
  "အဖွဲ့ဝင်",
  "အဖွဲ့ဝင်",
  "အဖွဲ့ဝင်",
  "အဖွဲ့ဝင်",
  "အဖွဲ့ဝင်",
  "အဖွဲ့ဝင်",
  "အဖွဲ့ဝင်",
  "အဖွဲ့ဝင်",
];

var phoneNumber = ["09968128474","09400050795","09783283823","09400019110","09440001372","09762255556","09774818125",
  "09257208881","09790620138","09440003703","09400005522","09799198198","09400045835","09788051650","09400439240",
"09440676443","09444366060","09257868074","09774848801","09258160724","09256057404","09250149718","09259611062","09400053125"];

class _PhoneState extends State<Phone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Locales.string(context, 'phone')),
        backgroundColor: const Color(0xFF2B60DE),
      ),
      body: ListView.builder(
          itemCount: listNames.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                // tileColor: Colors.greenAccent,
                leading: const Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.blue,
                ),
                title: Text(
                  listNames[index],
                ),
                subtitle: Text(
                  listPhone[index],
                ),
                trailing: IconButton(
                  onPressed: () {
                    FlutterPhoneDirectCaller.callNumber(phoneNumber[index]);
                  },
                  icon: const Icon(
                    Icons.phone,
                    size: 50,
                    color: Colors.green,
                  ),
                ),
                onTap: () {
                  launch("tel:${phoneNumber[index]}");
                },
              ),
            );
          }),
    );
  }

  buildListViewSeparated() {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Text(
            listPhone[index],
            style: const TextStyle(fontSize: 20),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: listPhone.length);
  }
}
