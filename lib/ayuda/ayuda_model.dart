import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componentes/ayuda1/ayuda1_widget.dart';
import '/componentes/ayuda2/ayuda2_widget.dart';
import '/componentes/ayuda3/ayuda3_widget.dart';
import '/componentes/consulta_enviada/consulta_enviada_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AyudaModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtconsultas widget.
  TextEditingController? txtconsultasController;
  String? Function(BuildContext, String?)? txtconsultasControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in btb_consulta widget.
  ConsultasRecord? enviado;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtconsultasController?.dispose();
  }

  /// Additional helper methods are added here.

}
