import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'productos_gustados_record.g.dart';

abstract class ProductosGustadosRecord
    implements Built<ProductosGustadosRecord, ProductosGustadosRecordBuilder> {
  static Serializer<ProductosGustadosRecord> get serializer =>
      _$productosGustadosRecordSerializer;

  @BuiltValueField(wireName: 'Nombre')
  String? get nombre;

  @BuiltValueField(wireName: 'Precio')
  double? get precio;

  @BuiltValueField(wireName: 'Imagen')
  String? get imagen;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProductosGustadosRecordBuilder builder) =>
      builder
        ..nombre = ''
        ..precio = 0.0
        ..imagen = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Productos_gustados');

  static Stream<ProductosGustadosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProductosGustadosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProductosGustadosRecord._();
  factory ProductosGustadosRecord(
          [void Function(ProductosGustadosRecordBuilder) updates]) =
      _$ProductosGustadosRecord;

  static ProductosGustadosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProductosGustadosRecordData({
  String? nombre,
  double? precio,
  String? imagen,
}) {
  final firestoreData = serializers.toFirestore(
    ProductosGustadosRecord.serializer,
    ProductosGustadosRecord(
      (p) => p
        ..nombre = nombre
        ..precio = precio
        ..imagen = imagen,
    ),
  );

  return firestoreData;
}
