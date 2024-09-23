import 'package:flutter/material.dart';
import 'package:freelancing_appp/constants/app_config.dart';
import 'package:freelancing_appp/constants/colors.dart';
import 'package:freelancing_appp/widgets/drawer_widget.dart';
import 'package:freelancing_appp/widgets/text_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const TextWidget(
          label: AppConfig.appName,
          fontWeight: FontWeight.bold,
        ),
        actions: const [Icon(Icons.more_vert_outlined)],
      ),
    );
  }
}
