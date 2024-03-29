import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componentes/bs_informacion_incluida/bs_informacion_incluida_widget.dart';
import '/componentes/bs_informacion_pendiente/bs_informacion_pendiente_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EProvedoresModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNCm widget.
  TextEditingController? txtNCmController;
  String? Function(BuildContext, String?)? txtNCmControllerValidator;
  // State field(s) for txtDCm widget.
  TextEditingController? txtDCmController;
  String? Function(BuildContext, String?)? txtDCmControllerValidator;
  // State field(s) for txtTCm widget.
  TextEditingController? txtTCmController;
  String? Function(BuildContext, String?)? txtTCmControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtNCmController?.dispose();
    txtDCmController?.dispose();
    txtTCmController?.dispose();
  }

  /// Additional helper methods are added here.

}
