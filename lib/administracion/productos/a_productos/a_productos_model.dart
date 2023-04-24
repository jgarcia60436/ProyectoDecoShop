import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componentes/bs_informacion_incluida/bs_informacion_incluida_widget.dart';
import '/componentes/bs_informacion_pendiente/bs_informacion_pendiente_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AProductosModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNombreProducto widget.
  TextEditingController? txtNombreProductoController;
  String? Function(BuildContext, String?)? txtNombreProductoControllerValidator;
  // State field(s) for txtPrecioProducto widget.
  TextEditingController? txtPrecioProductoController;
  String? Function(BuildContext, String?)? txtPrecioProductoControllerValidator;
  // State field(s) for txtDescripcionProducto widget.
  TextEditingController? txtDescripcionProductoController;
  String? Function(BuildContext, String?)?
      txtDescripcionProductoControllerValidator;
  // State field(s) for txtCantidadProducto widget.
  TextEditingController? txtCantidadProductoController;
  String? Function(BuildContext, String?)?
      txtCantidadProductoControllerValidator;
  // State field(s) for txtImagenProducto widget.
  TextEditingController? txtImagenProductoController;
  String? Function(BuildContext, String?)? txtImagenProductoControllerValidator;
  // State field(s) for SwOferta widget.
  bool? swOfertaValue;
  // State field(s) for txtDescuentoProducto widget.
  TextEditingController? txtDescuentoProductoController;
  String? Function(BuildContext, String?)?
      txtDescuentoProductoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtNombreProductoController?.dispose();
    txtPrecioProductoController?.dispose();
    txtDescripcionProductoController?.dispose();
    txtCantidadProductoController?.dispose();
    txtImagenProductoController?.dispose();
    txtDescuentoProductoController?.dispose();
  }

  /// Additional helper methods are added here.

}
