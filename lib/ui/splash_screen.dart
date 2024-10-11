import 'package:flutter/material.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  init() async {
    await Future.delayed(const Duration(seconds: 2), () {
      // navigator and rout mean from one page to another
      // Navigator.of(context).push(MaterialPageRoute(
      //   // builder: (context) => const SignUpScreen(),
      // ));
    });
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          // logo to center of splash screen
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(
            //   //  alignment: Alignment.center,
            //   "$staticAssets/logo.png",
            //   scale: 3.0,
            // ),
            // // change the size of logo box
            // const SizedBox(
            //   height: 20,
            // ),
            // Image.asset(
            //   "$staticAssets/Luciuos.png",
            //   scale: 3.0,
            // ),
            // const SizedBox(
            //   height: 30,
            // ),
            // Image.asset(
            //   "$staticAssets/Beauty Salon.png",
            //   scale: 3.0,
            // ),
            // const SizedBox(
            //   height: 30,
            // )
          ],
        ),
      ),
    );
  }
}
