import 'package:flutter/material.dart';
import 'package:freelancing_appp/constants/colors.dart';
import 'package:freelancing_appp/views/article_view.dart';
import 'package:freelancing_appp/widgets/text_widget.dart';

class UniqueColorCard extends StatelessWidget {
  final String title;
  final int index;
  final data;
  final showInterstialAdd;

  UniqueColorCard(
      {required this.title,
      required this.index,
      this.data,
      this.showInterstialAdd});

  // Predefined list of colors for light mode
  static const List<Color> lightModeColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.teal,
    Colors.amber,
    Colors.cyan,
    Colors.indigo,
    Colors.lime,
    Colors.pink,
    Colors.deepOrange,
    Colors.brown,
    Colors.lightBlue,
    Colors.deepPurple,
  ];

  // Predefined list of colors for dark mode
  static const List<Color> darkModeColors = [
    Colors.redAccent,
    Colors.greenAccent,
    Colors.blueAccent,
    Colors.orangeAccent,
    Colors.purpleAccent,
    Colors.tealAccent,
    Colors.amberAccent,
    Colors.cyanAccent,
    Colors.indigoAccent,
    Colors.limeAccent,
    Colors.pinkAccent,
    Colors.deepOrangeAccent,
    Colors.brown,
    Colors.lightBlueAccent,
    Colors.deepPurpleAccent,
  ];

  // Predefined list of gradients for light mode
  static const List<Gradient> lightModeGradients = [
    LinearGradient(
      colors: [Colors.red, Colors.orange],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    LinearGradient(
      colors: [Colors.green, Colors.teal],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    LinearGradient(
      colors: [Colors.blue, Colors.indigo],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    LinearGradient(
      colors: [Colors.purple, Colors.deepPurple],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    // Add more gradients as needed
  ];

  // Predefined list of gradients for dark mode
  static const List<Gradient> darkModeGradients = [
    LinearGradient(
      colors: [Colors.redAccent, Colors.orangeAccent],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    LinearGradient(
      colors: [Colors.greenAccent, Colors.tealAccent],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    LinearGradient(
      colors: [Colors.blueAccent, Colors.indigoAccent],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    LinearGradient(
      colors: [Colors.purpleAccent, Colors.deepPurpleAccent],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    // Add more gradients as needed
  ];

  // Function to get color based on index and theme
  Color getColor(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    List<Color> selectedColors = isDark ? darkModeColors : lightModeColors;
    return selectedColors[index % selectedColors.length];
  }

  // Function to get gradient based on index and theme
  Gradient getGradient(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    List<Gradient> selectedGradients =
        isDark ? darkModeGradients : lightModeGradients;
    return selectedGradients[index % selectedGradients.length];
  }

  @override
  Widget build(BuildContext context) {
    // Decide whether to use solid color or gradient
    bool useGradient =
        index % 2 == 0; // Example: alternate between gradient and solid color

    return InkWell(
      onTap: () {
        showInterstialAdd();
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ArticleView(data: data, title: title);
        }));
      },
      child: Container(
        height: MediaQuery.of(context).size.height * .17,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: useGradient ? null : getColor(context),
          gradient: useGradient ? getGradient(context) : null,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.black54
                  : Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: TextWidget(
            label: title,
            textAlign: TextAlign.center,
            color: useGradient
                ? Colors.white
                : (Theme.of(context).brightness == Brightness.dark
                    ? appbarColor
                    : Colors.black),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
