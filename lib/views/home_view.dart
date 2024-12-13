import 'package:flutter/material.dart';
import 'package:freelancing_appp/data/data.dart';
import 'package:freelancing_appp/widgets/appbar.dart';
import 'package:freelancing_appp/widgets/card.dart';


class HomeView extends StatelessWidget {
   HomeView({super.key});

  final items = MyData().data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // drawer: const DrawerWidget(),

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
