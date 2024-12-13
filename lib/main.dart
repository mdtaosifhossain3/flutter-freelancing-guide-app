import 'package:flutter/material.dart';
import 'package:freelancing_appp/constants/theme.dart';
import 'package:freelancing_appp/providers/theme_provider.dart';
import 'package:freelancing_appp/views/home_view.dart';
import 'package:freelancing_appp/views/otpView/otp_send_view.dart';
import 'package:freelancing_appp/views/otpView/otp_verify_view.dart';
import 'package:freelancing_appp/views/splash_view.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ],
        child: Builder(builder: (context) {
          final themeChanger = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            title: 'Freelancing Guide App',
            debugShowCheckedModeBanner: false,
            themeMode: themeChanger.themeMode,
            theme: lightTheme,
            darkTheme: darkTheme,
            home: OtpSendView(),

          );
        }));
  }
}
