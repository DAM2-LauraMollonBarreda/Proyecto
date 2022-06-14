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
      iconSize: 30,
      color: Colors.cyan,
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
      iconSize: 30,
      color: Colors.cyan,
    );
  }
}

class asociacionesButton extends StatelessWidget {
  String url;
  String nombre;
  String imagen;

  asociacionesButton({
    Key? key,
    required this.url,
    required this.nombre,
    required this.imagen,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => launch(url),
        child: Card(
          elevation: 9,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: ListTile(
              dense: false,
              leading: Image(
                image: NetworkImage(imagen),
              ),
              title: Text(
                nombre,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.cyan),
              ),
              trailing: Icon(Icons.arrow_forward_ios)),
        ));
  }
}
