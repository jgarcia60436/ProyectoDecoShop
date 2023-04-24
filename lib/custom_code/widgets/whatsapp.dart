// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({Key? key, this.width, this.height}) : super(key: key);

  final double? width;
  final double? height;

  @override
  _WhatsappState createState() => _WhatsappState();
}

Future<void> _launchURL() async {
  const url = 'https://wa.me/50672066624?text=Necesito asistencia';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'No se puede abrir el chat de WhatsApp';
  }
}

class _WhatsappState extends State<Whatsapp> {
  int _currentIndex = 0;

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SERVICIO DE ASISTENCIA 24/7',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '¡Contactanos ahora mismo por whatsapp!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () => _launchURL(),
                  icon: SvgPicture.asset(
                    'assets/whatsapp_icon.svg',
                    height: 24,
                    width: 24,
                  ),
                  label: Text('Enviar Mensaje', textAlign: TextAlign.center),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () => _showBottomSheet(context),
            child: Text(
              'Contactanos por Whatsapp',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
