import 'package:flutter/material.dart';
import 'package:freelancing_appp/constants/app_config.dart';
import 'package:freelancing_appp/constants/colors.dart';
import 'package:freelancing_appp/providers/theme_provider.dart';
import 'package:freelancing_appp/widgets/drawer_widget.dart';
import 'package:freelancing_appp/widgets/popover_widget.dart';
import 'package:freelancing_appp/widgets/text_widget.dart';
import 'package:popover/popover.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: blackColor, // Set the menu icon color to black
        ),
        title: const TextWidget(
          label: AppConfig.appName,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                  onPressed: () async {
                    await showPopover(
                        context: context,
                        bodyBuilder: (context) => PopoverWidget(
                              themeProvider: themeProvider,
                            ),
                        width: 150,
                        height: 100,
                        backgroundColor:
                            themeProvider.themeMode == ThemeMode.light
                                ? appbarColor
                                : blackColor,
                        direction: PopoverDirection.bottom);
                  },
                  icon: const Icon(
                    Icons.more_vert,
                  ));
            },
          )
        ],
      ),
    );
  }
}
