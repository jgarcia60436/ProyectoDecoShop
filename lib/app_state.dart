import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
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
    _favoritos =
        prefs.getStringList('ff_favoritos')?.map((path) => path.ref).toList() ??
            _favoritos;
    _compra =
        prefs.getStringList('ff_compra')?.map((path) => path.ref).toList() ??
            _compra;
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

  List<DocumentReference> _favoritos = [];
  List<DocumentReference> get favoritos => _favoritos;
  set favoritos(List<DocumentReference> _value) {
    _favoritos = _value;
    prefs.setStringList('ff_favoritos', _value.map((x) => x.path).toList());
  }

  void addToFavoritos(DocumentReference _value) {
    _favoritos.add(_value);
    prefs.setStringList('ff_favoritos', _favoritos.map((x) => x.path).toList());
  }

  void removeFromFavoritos(DocumentReference _value) {
    _favoritos.remove(_value);
    prefs.setStringList('ff_favoritos', _favoritos.map((x) => x.path).toList());
  }

  void removeAtIndexFromFavoritos(int _index) {
    _favoritos.removeAt(_index);
    prefs.setStringList('ff_favoritos', _favoritos.map((x) => x.path).toList());
  }

  bool _corazon = false;
  bool get corazon => _corazon;
  set corazon(bool _value) {
    _corazon = _value;
  }

  List<DocumentReference> _compra = [];
  List<DocumentReference> get compra => _compra;
  set compra(List<DocumentReference> _value) {
    _compra = _value;
    prefs.setStringList('ff_compra', _value.map((x) => x.path).toList());
  }

  void addToCompra(DocumentReference _value) {
    _compra.add(_value);
    prefs.setStringList('ff_compra', _compra.map((x) => x.path).toList());
  }

  void removeFromCompra(DocumentReference _value) {
    _compra.remove(_value);
    prefs.setStringList('ff_compra', _compra.map((x) => x.path).toList());
  }

  void removeAtIndexFromCompra(int _index) {
    _compra.removeAt(_index);
    prefs.setStringList('ff_compra', _compra.map((x) => x.path).toList());
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
