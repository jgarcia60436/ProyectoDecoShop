import '/components/ayuda1_widget.dart';
import '/components/ayuda2_widget.dart';
import '/components/ayuda3_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AyudaModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtconsultas widget.
  TextEditingController? txtconsultasController;
  String? Function(BuildContext, String?)? txtconsultasControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtconsultasController?.dispose();
  }

  /// Additional helper methods are added here.

}