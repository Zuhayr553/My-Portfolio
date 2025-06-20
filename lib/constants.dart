import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const primaryColor = Color(0xFFFFC107);
const secondaryColor = Color(0xFF242430);
const darkColor = Color(0xFF191923);
const bodyTextColor = Color(0xFF8B8B8D);
const bodyMediumColor = Color.fromARGB(255, 255, 255, 255);
const bgColor = Color(0xFF1E1E28);

const defaultPadding = 20.0;
const defaultDuration = Duration(seconds: 1); // we use it on our animation
const maxWidth = 1440.0; // max width of our web
void launchMyURL(String urlProvided) async {
  Uri url = Uri.parse(urlProvided); // Replace with the URL you want to open
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
