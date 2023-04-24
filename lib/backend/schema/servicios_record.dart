import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'servicios_record.g.dart';

abstract class ServiciosRecord
    implements Built<ServiciosRecord, ServiciosRecordBuilder> {
  static Serializer<ServiciosRecord> get serializer =>
      _$serviciosRecordSerializer;

  @BuiltValueField(wireName: 'Imagen')
  BuiltList<String>? get imagen;

  @BuiltValueField(wireName: 'Nombre')
  BuiltList<String>? get nombre;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ServiciosRecordBuilder builder) => builder
    ..imagen = ListBuilder()
    ..nombre = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('servicios');

  static Stream<ServiciosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ServiciosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ServiciosRecord._();
  factory ServiciosRecord([void Function(ServiciosRecordBuilder) updates]) =
      _$ServiciosRecord;

  static ServiciosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createServiciosRecordData() {
  final firestoreData = serializers.toFirestore(
    ServiciosRecord.serializer,
    ServiciosRecord(
      (s) => s
        ..imagen = null
        ..nombre = null,
    ),
  );

  return firestoreData;
}
