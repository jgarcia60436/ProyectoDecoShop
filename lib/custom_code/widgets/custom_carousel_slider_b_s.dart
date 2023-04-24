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

class CustomCarouselSliderBS extends StatefulWidget {
  const CustomCarouselSliderBS({
    Key? key,
    this.width,
    this.height,
    required this.texto,
    required this.imagenes,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<String> texto;
  final List<String> imagenes;

  @override
  _CustomCarouselSliderBSState createState() => _CustomCarouselSliderBSState();
}

Future<void> _launchURL() async {
  const url = 'https://wa.me/50672066624/?text=Necesito un servicio';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'No se puede abrir el chat de WhatsApp $url';
  }
}

class _CustomCarouselSliderBSState extends State<CustomCarouselSliderBS> {
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
                  'LOS SERVICIOS SE BRINDAN POR CITA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '¡No te preocupes, estamos acá para ayudarte, escribenos y un agente coordinará tu cita!',
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
                  label: Text('Enviar Mensaje'),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            items: widget.imagenes
                .map((imagenes) => GestureDetector(
                      onTap: () {
                        _showBottomSheet(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: NetworkImage(imagenes),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            widget.texto[_currentIndex],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 16 / 9,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
