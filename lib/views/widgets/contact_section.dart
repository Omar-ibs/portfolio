import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/utils/colors_palette.dart';
import 'package:portfolio/utils/font_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});
  final String email = 'om4rabd1@gmail.com';
  final String phoneNumber = '+9647865955716';
  Future<void> _makePhoneCall(BuildContext context) async {
    final Uri callUri = Uri.parse("tel:$phoneNumber");

    if (await canLaunchUrl(callUri)) {
      await launchUrl(callUri);
    } else {
      await Clipboard.setData(ClipboardData(text: phoneNumber));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Phone number copied to clipboard!")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.phone,
          color: ColorsPalette.whiteColor,
        ),
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () => _makePhoneCall(context),
          child: Text(
            '(+964) 7865955716 |',
            style: FontStyles.s16regularText(context)
                .copyWith(color: ColorsPalette.whiteColor),
          ),
        ),
        const Icon(
          Icons.email,
          color: ColorsPalette.whiteColor,
        ),
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () => _launchEmail(email),
          child: Text(
            email,
            style: FontStyles.s16regularText(context)
                .copyWith(color: ColorsPalette.whiteColor),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  void _launchEmail(String email) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      // Handle the error if the email app cannot be opened
      throw 'Could not launch $emailUri';
    }
  }
}
