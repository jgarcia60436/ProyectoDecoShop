import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'consultas_record.g.dart';

abstract class ConsultasRecord
    implements Built<ConsultasRecord, ConsultasRecordBuilder> {
  static Serializer<ConsultasRecord> get serializer =>
      _$consultasRecordSerializer;

  String? get comentario;

  @BuiltValueField(wireName: 'nombre_usuario')
  String? get nombreUsuario;

  String? get correo;

  String? get telefono;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ConsultasRecordBuilder builder) => builder
    ..comentario = ''
    ..nombreUsuario = ''
    ..correo = ''
    ..telefono = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Consultas');

  static Stream<ConsultasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ConsultasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ConsultasRecord._();
  factory ConsultasRecord([void Function(ConsultasRecordBuilder) updates]) =
      _$ConsultasRecord;

  static ConsultasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createConsultasRecordData({
  String? comentario,
  String? nombreUsuario,
  String? correo,
  String? telefono,
}) {
  final firestoreData = serializers.toFirestore(
    ConsultasRecord.serializer,
    ConsultasRecord(
      (c) => c
        ..comentario = comentario
        ..nombreUsuario = nombreUsuario
        ..correo = correo
        ..telefono = telefono,
    ),
  );

  return firestoreData;
}
