import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtCorreo widget.
  TextEditingController? txtCorreoController;
  String? Function(BuildContext, String?)? txtCorreoControllerValidator;
  // State field(s) for txtContra widget.
  TextEditingController? txtContraController;
  late bool txtContraVisibility;
  String? Function(BuildContext, String?)? txtContraControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtContraVisibility = false;
  }

  void dispose() {
    txtCorreoController?.dispose();
    txtContraController?.dispose();
  }

  /// Additional helper methods are added here.

}
