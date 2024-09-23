import 'package:flutter/material.dart';
import 'package:freelancing_appp/constants/app_config.dart';
import 'package:freelancing_appp/constants/colors.dart';
import 'package:freelancing_appp/widgets/text_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shadowColor: greytColor,
      elevation: 20,
      child: ListView(
        children: [
          DrawerHeader(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.lightbulb_circle_outlined,
                size: 50,
                color: greytColor,
              ),
              const SizedBox(
                height: 10,
              ),
              TextWidget(
                label: AppConfig.appName,
                color: primaryTextColor,
                fontSize: 24,
              )
            ],
          )),
          ListTile(
            leading: const Icon(Icons.play_arrow_outlined),
            title: const Text('আমাদের অ্যাপ স্টোর'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.star_outline),
            title: const Text('৫ স্টার রেটিং দিন '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.share_outlined),
            title: const Text('অ্যাপ শেয়ার করুন '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.message_outlined),
            title: const Text('আপনার মতামত দিন '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
