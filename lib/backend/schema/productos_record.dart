import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'productos_record.g.dart';

abstract class ProductosRecord
    implements Built<ProductosRecord, ProductosRecordBuilder> {
  static Serializer<ProductosRecord> get serializer =>
      _$productosRecordSerializer;

  @BuiltValueField(wireName: 'Nombre')
  String? get nombre;

  @BuiltValueField(wireName: 'Precio')
  double? get precio;

  @BuiltValueField(wireName: 'Descripcion')
  String? get descripcion;

  @BuiltValueField(wireName: 'Cantidad')
  int? get cantidad;

  @BuiltValueField(wireName: 'Imagen')
  String? get imagen;

  @BuiltValueField(wireName: 'Oferta')
  bool? get oferta;

  @BuiltValueField(wireName: 'Porcentaje_Oferta')
  int? get porcentajeOferta;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProductosRecordBuilder builder) => builder
    ..nombre = ''
    ..precio = 0.0
    ..descripcion = ''
    ..cantidad = 0
    ..imagen = ''
    ..oferta = false
    ..porcentajeOferta = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('productos');

  static Stream<ProductosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProductosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProductosRecord._();
  factory ProductosRecord([void Function(ProductosRecordBuilder) updates]) =
      _$ProductosRecord;

  static ProductosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProductosRecordData({
  String? nombre,
  double? precio,
  String? descripcion,
  int? cantidad,
  String? imagen,
  bool? oferta,
  int? porcentajeOferta,
}) {
  final firestoreData = serializers.toFirestore(
    ProductosRecord.serializer,
    ProductosRecord(
      (p) => p
        ..nombre = nombre
        ..precio = precio
        ..descripcion = descripcion
        ..cantidad = cantidad
        ..imagen = imagen
        ..oferta = oferta
        ..porcentajeOferta = porcentajeOferta,
    ),
  );

  return firestoreData;
}
