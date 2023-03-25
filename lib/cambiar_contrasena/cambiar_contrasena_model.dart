import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CambiarContrasenaModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNuevaCotrasena widget.
  TextEditingController? txtNuevaCotrasenaController;
  String? Function(BuildContext, String?)? txtNuevaCotrasenaControllerValidator;
  // State field(s) for txtConfirmarNuevaConstrasena widget.
  TextEditingController? txtConfirmarNuevaConstrasenaController;
  String? Function(BuildContext, String?)?
      txtConfirmarNuevaConstrasenaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtNuevaCotrasenaController?.dispose();
    txtConfirmarNuevaConstrasenaController?.dispose();
  }

  /// Additional helper methods are added here.

}
