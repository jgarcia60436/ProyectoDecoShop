import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'empleados_record.g.dart';

abstract class EmpleadosRecord
    implements Built<EmpleadosRecord, EmpleadosRecordBuilder> {
  static Serializer<EmpleadosRecord> get serializer =>
      _$empleadosRecordSerializer;

  @BuiltValueField(wireName: 'Nombre')
  String? get nombre;

  @BuiltValueField(wireName: 'Direccion')
  String? get direccion;

  @BuiltValueField(wireName: 'Telefono')
  int? get telefono;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EmpleadosRecordBuilder builder) => builder
    ..nombre = ''
    ..direccion = ''
    ..telefono = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('empleados');

  static Stream<EmpleadosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EmpleadosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EmpleadosRecord._();
  factory EmpleadosRecord([void Function(EmpleadosRecordBuilder) updates]) =
      _$EmpleadosRecord;

  static EmpleadosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEmpleadosRecordData({
  String? nombre,
  String? direccion,
  int? telefono,
}) {
  final firestoreData = serializers.toFirestore(
    EmpleadosRecord.serializer,
    EmpleadosRecord(
      (e) => e
        ..nombre = nombre
        ..direccion = direccion
        ..telefono = telefono,
    ),
  );

  return firestoreData;
}
