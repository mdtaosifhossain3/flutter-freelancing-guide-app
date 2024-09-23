import 'package:flutter/material.dart';
import 'package:freelancing_appp/providers/theme_provider.dart';

class PopoverWidget extends StatefulWidget {
  final ThemeProvider? themeProvider;
  const PopoverWidget({super.key, this.themeProvider});

  @override
  State<PopoverWidget> createState() => _PopoverWidgetState();
}

class _PopoverWidgetState extends State<PopoverWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: () {
              widget.themeProvider?.setTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: const Row(
              children: [
                Icon(Icons.dark_mode_sharp),
                SizedBox(
                  width: 8,
                ),
                Text("Dark mode")
              ],
            )),
        TextButton(
            onPressed: () {
              widget.themeProvider?.setTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: const Row(
              children: [
                Icon(Icons.light_mode_sharp),
                SizedBox(
                  width: 8,
                ),
                Text("Ligth mode")
              ],
            )),
      ],
    );
  }
}
