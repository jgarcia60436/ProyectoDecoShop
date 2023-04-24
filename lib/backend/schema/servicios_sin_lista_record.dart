import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'servicios_sin_lista_record.g.dart';

abstract class ServiciosSinListaRecord
    implements Built<ServiciosSinListaRecord, ServiciosSinListaRecordBuilder> {
  static Serializer<ServiciosSinListaRecord> get serializer =>
      _$serviciosSinListaRecordSerializer;

  @BuiltValueField(wireName: 'Precio')
  double? get precio;

  @BuiltValueField(wireName: 'Descripcion')
  String? get descripcion;

  @BuiltValueField(wireName: 'Nombre')
  String? get nombre;

  @BuiltValueField(wireName: 'Imagen')
  String? get imagen;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ServiciosSinListaRecordBuilder builder) =>
      builder
        ..precio = 0.0
        ..descripcion = ''
        ..nombre = ''
        ..imagen = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('serviciosSinLista');

  static Stream<ServiciosSinListaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ServiciosSinListaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ServiciosSinListaRecord._();
  factory ServiciosSinListaRecord(
          [void Function(ServiciosSinListaRecordBuilder) updates]) =
      _$ServiciosSinListaRecord;

  static ServiciosSinListaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createServiciosSinListaRecordData({
  double? precio,
  String? descripcion,
  String? nombre,
  String? imagen,
}) {
  final firestoreData = serializers.toFirestore(
    ServiciosSinListaRecord.serializer,
    ServiciosSinListaRecord(
      (s) => s
        ..precio = precio
        ..descripcion = descripcion
        ..nombre = nombre
        ..imagen = imagen,
    ),
  );

  return firestoreData;
}
