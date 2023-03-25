import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _carrito =
        prefs.getStringList('ff_carrito')?.map((path) => path.ref).toList() ??
            _carrito;
    _carritoSum = prefs.getDouble('ff_carritoSum') ?? _carritoSum;
    _favorite =
        prefs.getStringList('ff_favorite')?.map((path) => path.ref).toList() ??
            _favorite;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _carrito = [];
  List<DocumentReference> get carrito => _carrito;
  set carrito(List<DocumentReference> _value) {
    _carrito = _value;
    prefs.setStringList('ff_carrito', _value.map((x) => x.path).toList());
  }

  void addToCarrito(DocumentReference _value) {
    _carrito.add(_value);
    prefs.setStringList('ff_carrito', _carrito.map((x) => x.path).toList());
  }

  void removeFromCarrito(DocumentReference _value) {
    _carrito.remove(_value);
    prefs.setStringList('ff_carrito', _carrito.map((x) => x.path).toList());
  }

  void removeAtIndexFromCarrito(int _index) {
    _carrito.removeAt(_index);
    prefs.setStringList('ff_carrito', _carrito.map((x) => x.path).toList());
  }

  double _carritoSum = 0.0;
  double get carritoSum => _carritoSum;
  set carritoSum(double _value) {
    _carritoSum = _value;
    prefs.setDouble('ff_carritoSum', _value);
  }

  String _vNombreBuscar = '';
  String get vNombreBuscar => _vNombreBuscar;
  set vNombreBuscar(String _value) {
    _vNombreBuscar = _value;
  }

  bool _isLike = false;
  bool get isLike => _isLike;
  set isLike(bool _value) {
    _isLike = _value;
  }

  List<DocumentReference> _favorite = [];
  List<DocumentReference> get favorite => _favorite;
  set favorite(List<DocumentReference> _value) {
    _favorite = _value;
    prefs.setStringList('ff_favorite', _value.map((x) => x.path).toList());
  }

  void addToFavorite(DocumentReference _value) {
    _favorite.add(_value);
    prefs.setStringList('ff_favorite', _favorite.map((x) => x.path).toList());
  }

  void removeFromFavorite(DocumentReference _value) {
    _favorite.remove(_value);
    prefs.setStringList('ff_favorite', _favorite.map((x) => x.path).toList());
  }

  void removeAtIndexFromFavorite(int _index) {
    _favorite.removeAt(_index);
    prefs.setStringList('ff_favorite', _favorite.map((x) => x.path).toList());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
