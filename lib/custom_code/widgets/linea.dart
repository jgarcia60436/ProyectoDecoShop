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

import 'package:text_divider/text_divider.dart';

class Linea extends StatefulWidget {
  const Linea({
    Key? key,
    this.width,
    this.height,
    required this.horizontalText,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String horizontalText;

  @override
  _LineaState createState() => _LineaState();
}

class _LineaState extends State<Linea> {
  late final String _horizontalText;

  @override
  void initState() {
    super.initState();
    _horizontalText = widget.horizontalText;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextDivider.horizontal(
                text: Text(
                  _horizontalText,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                color: Theme.of(context).primaryColor,
                thickness: 3.0,
              ),
            ],
          ),
        ),
      );
}
