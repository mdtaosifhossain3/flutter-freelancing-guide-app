import 'package:flutter/material.dart';
import 'package:freelancing_appp/providers/theme_provider.dart';
import 'package:freelancing_appp/views/otpView/otp_send_view.dart';
import 'package:url_launcher/url_launcher.dart';

class PopoverWidget extends StatefulWidget {
  final ThemeProvider? themeProvider;
  const PopoverWidget({super.key, this.themeProvider});

  @override
  State<PopoverWidget> createState() => _PopoverWidgetState();
}

class _PopoverWidgetState extends State<PopoverWidget> {
  // Function to send a message to the SMS app
  Future<void> sendStopMessage() async {
    const phoneNumber = '21213';
    const message = 'STOP fguide';

    final Uri smsUri = Uri(
      scheme: 'sms',
      path: phoneNumber,
      queryParameters: {'body': message}, // pre-fill message
    );

    // Check if the URL can be launched (i.e., if SMS is available)
    if (await canLaunchUrl(smsUri)) {
      await launchUrl(smsUri); // Opens SMS app with pre-filled message
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Could not launch SMS')),
      );
    }
  }

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
        TextButton(
            onPressed: () async {
              await sendStopMessage();
              await Future.delayed(const Duration(seconds: 6));
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return OtpSendView();
              }));
            },
            child: const Row(
              children: [
                Icon(Icons.logout),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Unsubscribe",
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ))
      ],
    );
  }
}
