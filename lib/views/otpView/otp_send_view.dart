import 'package:flutter/material.dart';
import 'package:freelancing_appp/constants/colors.dart';

import '../../services/send_otp_service.dart';
import '../../widgets/button_widget.dart';

class OtpSendView extends StatelessWidget {
  OtpSendView({super.key});
  final controller = TextEditingController();
  final service = SendOTPService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryTextColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //-----------------------Logo-----------------------
            Column(
              children: [
                Image.asset(
                  "assets/images/logo.png", // Replace with your image asset path
                  height: 120.0,
                ),
                const SizedBox(height: 10.0),
                //-----------------------welcome text-----------------------
              ],
            ),

            Column(
              children: [
                //-----------------------Register-----------------------
                SizedBox(
                  height: 53,
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 15),
                        fillColor: chatTextColor,
                        filled: true,
                        hintText: "Enter your phone number...",
                        hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: blackColor.withOpacity(0.5)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: BorderSide(color: chatTextColor)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: BorderSide(color: chatTextColor))),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () async {
                    await service.sendOTP(context, controller);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 48,
                    decoration: BoxDecoration(
                        color: blackColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: ButtonWidget(
                      label: "Submit",
                      bgcolor: blackColor,
                    ),
                  ),
                ),
              ],
            )

            //-----------------------Sign Up-----------------------
          ],
        ),
      ),
    );
  }
}
