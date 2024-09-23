import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freelancing_appp/constants/app_config.dart';
import 'package:freelancing_appp/constants/colors.dart';
import 'package:freelancing_appp/views/home_view.dart';
import 'package:freelancing_appp/widgets/text_widget.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // Timer(const Duration(seconds: 2), () {
    //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
    //     return const HomeView();
    //   }));
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextWidget(
              label: AppConfig.appName,
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: primaryTextColor,
            ),
            const SizedBox(
              height: 10,
            ),
            TextWidget(
              label: "Success Starts with the Right Tip!",
              color: greytColor,
            )
          ],
        ),
      ),
    );
  }
}
