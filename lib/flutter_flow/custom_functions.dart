import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

double quitarProducto(double value) {
  return value * -1;
}

double dolarizacion(
  double precioTotal,
  double tipoCambio,
) {
  double total = precioTotal / tipoCambio;

  return double.parse(total.toStringAsFixed(2));
}

bool validaCaracteresContra(String contrasena) {
  if (contrasena.length >= 8) {
    return contrasena.contains(new RegExp(r'[a-zA-Z]')) &&
        contrasena.contains(new RegExp(r'[0-9]'));
  } else {
    return false;
  }
}
