import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:freelancing_appp/constants/colors.dart';
import 'package:freelancing_appp/widgets/appbar.dart';
import 'package:freelancing_appp/widgets/text_widget.dart';

class ArticleView extends StatelessWidget {
  var data;
  final String title;
  ArticleView({super.key, required this.data, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(
          title: TextWidget(
        label: title,
        color: blackColor,
      )),
      body: SingleChildScrollView(
        child: Html(data: data, style: {
          "body": Style(
            lineHeight: LineHeight.number(1.5),
          ),
          "h1": Style(
            // color: Colors.blue,
            fontSize: FontSize.xxLarge,
            fontWeight: FontWeight.bold,
          ),
          "h2": Style(
            // color: Colors.blueAccent,
            fontSize: FontSize.xLarge,
            fontWeight: FontWeight.bold,
          ),
          "h3": Style(fontSize: FontSize.larger),
          "p": Style(
            fontSize: FontSize(18),
            lineHeight: const LineHeight(1.5),
          ),
          "ul": Style(margin: Margins.only(top: 15)),
          "ol": Style(margin: Margins.only(top: 15)),
          "li": Style(
              fontSize: FontSize.medium, margin: Margins.only(bottom: 10)),
          "a": Style(
            color: Colors.blueAccent,
            textDecoration: TextDecoration.underline,
          ),
          "strong": Style(color: Colors.red),
          ".highlight": Style(
              color: const Color(0xfff1c40f),
              padding: HtmlPaddings.all(5),
              fontWeight: FontWeight.bold),
          "blockquote": Style(
              backgroundColor: const Color(0xffecf0f1),
              border: const Border(
                  left: BorderSide(width: 5, color: Color(0xff95a5a6))),
              margin: Margins.only(top: 20),
              padding: HtmlPaddings.symmetric(horizontal: 10, vertical: 20),
              fontStyle: FontStyle.italic)
        }),
      ),
    );
  }
}
