import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'compra_record.g.dart';

abstract class CompraRecord
    implements Built<CompraRecord, CompraRecordBuilder> {
  static Serializer<CompraRecord> get serializer => _$compraRecordSerializer;

  @BuiltValueField(wireName: 'Nombre')
  String? get nombre;

  @BuiltValueField(wireName: 'Precio')
  double? get precio;

  @BuiltValueField(wireName: 'Descripcion')
  String? get descripcion;

  @BuiltValueField(wireName: 'Cantidad')
  int? get cantidad;

  String? get imagen;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CompraRecordBuilder builder) => builder
    ..nombre = ''
    ..precio = 0.0
    ..descripcion = ''
    ..cantidad = 0
    ..imagen = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Compra');

  static Stream<CompraRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CompraRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CompraRecord._();
  factory CompraRecord([void Function(CompraRecordBuilder) updates]) =
      _$CompraRecord;

  static CompraRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCompraRecordData({
  String? nombre,
  double? precio,
  String? descripcion,
  int? cantidad,
  String? imagen,
}) {
  final firestoreData = serializers.toFirestore(
    CompraRecord.serializer,
    CompraRecord(
      (c) => c
        ..nombre = nombre
        ..precio = precio
        ..descripcion = descripcion
        ..cantidad = cantidad
        ..imagen = imagen,
    ),
  );

  return firestoreData;
}
