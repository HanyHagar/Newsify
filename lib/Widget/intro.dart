import 'package:flutter/material.dart';
import 'package:newsify/layouts/home_screen.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.sizeOf(context);
    Future.delayed(
      const Duration(seconds: 3),
      () {
        return Navigator.pushReplacement(
            context,
          MaterialPageRoute(builder: (context) => const HomeScreen(),)
        );
      },
    );
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Spacer(flex: 4,),
              Image.asset(
                  'assets/news.png',
                width: mediaQuery.width/3,
                height: mediaQuery.height/6,
              ),
              const Spacer(flex: 5,),
              const Text(
                "التطبيق مسؤول عن نقل الاخبار لا عن صحه الاخبار او خلوها من الأجندات السياسية , فلا تصدق كل ما تسمع وكل ما يُقال ! فتكن لعبه بين من أراد ان يوجهك حيثما شاء وكيفما أراد ! كن لك فكراً مستقلاً وعقلاً يفكر في كل الأشياء.. اسمع لهذا وذاك ولكن لا تصدق إلا بعد أن تتحرى وتتأكد ليكن قرارك أنت لا قرار أحد أخر!",
                maxLines: 8,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Alexandria'
                ),
                textAlign: TextAlign.start,
                textDirection: TextDirection.rtl,
              ),
              const Spacer(flex: 1,),
            ],
          ),
        ),
      ),
    );
  }
}

