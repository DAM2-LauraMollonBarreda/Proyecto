import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CallPhoneWidget extends StatelessWidget {
  final String phoneNumber;

  CallPhoneWidget(this.phoneNumber);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.phone),
      onPressed: () {
        launch('tel://$phoneNumber');
      },
    );
  }
}

class CallURLWidget extends StatelessWidget {
  final String url;

  CallURLWidget(this.url);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.web),
      onPressed: () {
        launch(url);
      },
    );
  }
}
