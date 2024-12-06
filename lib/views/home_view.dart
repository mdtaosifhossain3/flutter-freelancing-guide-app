import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freelancing_appp/data/data.dart';
import 'package:freelancing_appp/widgets/appbar.dart';
import 'package:freelancing_appp/widgets/card.dart';
import 'package:freelancing_appp/widgets/drawer_widget.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final items = MyData().data;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: appbar(),
      body: ListView.builder(
          padding: const EdgeInsets.only(top: 20),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: UniqueColorCard(
                title: items[index]["card_title"],
                index: index,
                data: items[index]["data"],
              ),
            );
          }),
    );
  }
}
