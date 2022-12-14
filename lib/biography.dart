import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';

class Biography extends StatelessWidget {
  const Biography({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(Locales.string(context, 'history')),
        backgroundColor: const Color(0xFF2B60DE),
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Text('       ၂၀၂၂ခုနှစ် ကိုဗစ်တတိယလှိုင်းဖြစ်ပွားချိန်တွင် မိုးညှင်းမြို့မှ မြို့မိ၊ မြို့ဖများဦးဆောင်၍ (၁၂-၇-၂၀၂၁)ရက်နေ့တွင် အောက်ဆီဂျင်စက်ရုံ ဖြစ်မြောက်ရေး ကော်မတီကို အရေးပေါ် ဖွဲ့စည်းခဲ့ကြပါသည်။ \n        '
              '(၃၀-၁၁-၂၀၂၁)ရက်နေ့တွင် မြို့နေပြည်သူများ၊ရပ်နီးရပ်ဝေးမှ သဒ္ဓါထက်သန်သူများ စုပေါင်းထည့်ဝင်လှူဒါန်းငွေ စုစုပေါင်း ကျပ်သိန်း (၃၁၇,၈၆၂,၅၀၀/-) ရရှိခဲ့ပါသည်။ \n'
              '       အောက်ဆီဂျင်စက်ရုံဖြစ်မြောက်ရေးအတွက် ဦးတင်အောင်မြင့် (လပ်ကီး) ရွှေဆိုင်မိသားစုမှ စတင်၍ မြေလှူဒါန်းခဲ့ပါသည်။ \n'
              '        ထို့နောက် (၇-၈-၂၀၂၁)ရက်နေ့တွင် စတင်ပန္နက်ရိုက်ပြီး (၂၅-၈-၂၀၂၁)ရက်နေ့တွင် စက်ရုံအဆောက်အဦအား စတင်တည်ဆောက်ခဲ့ပါသည်။ တည်ဆောက်စဥ် ကာလအတွင်း အုတ်၊သဲ၊ကျောက်၊လူအား၊လုပ်အားဝိုင်းဝန်းလှူဒါန်းကြပါသည်။ \n'
              '       (၁၅-၉-၂၀၂၁)ရက်နေ့တွင် မြို့လူထုစုပေါင်းလှူဒါန်းငွေဖြင့်ဝယ်ယူထားသော (30 Meter Cub per Hour)စက် ရောက်ရှိခဲ့ပါသည်။ \n'
              '       (၁၈-၉-၂၀၂၁)ရက်နေ့ ညနေ (၀၅း၀၀) နာရီ အချိန်တွင် စတင်လည်ပတ်၍ မိုးညှင်းအနီးနားရှိ မြို့များအထိ အခမဲ့ ဖြန့်ဝေ ထုတ်လုပ်ပေးခဲ့ပါသည်။ မော်လူး၊ အင်းတော်၊ ဗန်းမောက်နယ်များ၊ နန်းမား၊ ဟိုပင်၊ ပင်းဘော၊ အင်းတော်ကြီးနယ်များ အထိပါ တွင်ကျယ်စွာ အခမဲ့ထုတ်လုပ် လှူဒါန်းခဲ့ပါသည်။ \n'
              '       (၂၂-၁၂-၂၀၂၁)ရက်နေ့တွင် ကချင်ပြည်နယ်အစိုးရအဖွဲ့မှ လှူဒါန်းသော အောက်ဆီဂျင်စက် (50 Meter Cub per Hour)စက် သစ်တစ်စုံအား လက်ခံရရှိခဲ့ပါသည်။ \n'
              '       (၃၁-၅-၂၀၂၂)ရက်နေ့အထိ အခမဲ့ အဖြစ်အောက်ဆီဂျင် (40)Liter အရေအတွက် အလုံး စုစုပေါင်း (၇၀၀၀) ကျော်ဖြန့်ဝေလှူဒါန်းခဲ့ပြီးဖြစ်ပါသည်။ \n'
              '       \"အသင်းကြီး အဓွန့်ရှည် တည်တံ့ပါစေ။" \n'
              '        ဤအသင်းသည် မွန်မြတ်သော အလှူများ ပေးလှူနေသည့်အသင်းဖြစ်ပါသည်။စိတ်စေတနာ မွန်မြတ်သောသူများသည် ဤအသင်း၏ဝန်ကို ထမ်းကြသည်ဟု ကျွန်ုပ် ယုံကြည်ပါသည်။',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.justify,),

        ),
      ),
    );
  }
}
