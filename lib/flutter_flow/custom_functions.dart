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
import '../../auth/firebase_auth/auth_util.dart';

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

bool validarCampos(
  String? valor1,
  String? valor2,
  String? valor3,
) {
  if (valor1 != null &&
      valor2 != null &&
      valor3 != null &&
      valor1.isNotEmpty &&
      valor2.isNotEmpty &&
      valor3.isNotEmpty) {
    return true;
  } else {
    return false;
  }
}

String saludoHoraActual() {
  // Code to send a message depending if it's morning, evening or night based on the system hour
  var now = new DateTime.now();
  var formatter = new DateFormat('HH');
  String formatted = formatter.format(now);
  int horaActual = int.parse(formatted);
  if (horaActual >= 6 && horaActual < 12) {
    return 'Buenos días';
  } else if (horaActual >= 12 && horaActual < 19) {
    return 'Buenas tardes';
  } else {
    return 'Buenas noches';
  }
}

bool? validarFavoritos(
  DocumentReference objeto,
  List<DocumentReference> lista,
) {
  bool estaEnLista(List<DocumentReference> lista, DocumentReference objeto) {
    return lista.any((element) => element.path == objeto.path);
  }

  // Verificar si el objeto ya está en la lista
  bool estaEnLaLista = estaEnLista(lista, objeto);

  // Retornar el resultado de la verificación
  return estaEnLaLista;
}

bool esImagen(String url) {
  return (url.startsWith('https://') || url.startsWith('http://')) &&
      (url.endsWith('.jpg') || url.endsWith('.png'));
}
