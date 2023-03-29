import '/auth/auth_util.dart';
import '/componentes/contra/contra_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OlvidarContraModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtCorreoContra widget.
  TextEditingController? txtCorreoContraController;
  String? Function(BuildContext, String?)? txtCorreoContraControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtCorreoContraController?.dispose();
  }

  /// Additional helper methods are added here.

}
