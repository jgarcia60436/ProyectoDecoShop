import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'provedores_record.g.dart';

abstract class ProvedoresRecord
    implements Built<ProvedoresRecord, ProvedoresRecordBuilder> {
  static Serializer<ProvedoresRecord> get serializer =>
      _$provedoresRecordSerializer;

  @BuiltValueField(wireName: 'Nombre')
  String? get nombre;

  @BuiltValueField(wireName: 'Direccion')
  String? get direccion;

  @BuiltValueField(wireName: 'Telefono')
  int? get telefono;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProvedoresRecordBuilder builder) => builder
    ..nombre = ''
    ..direccion = ''
    ..telefono = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('provedores');

  static Stream<ProvedoresRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProvedoresRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProvedoresRecord._();
  factory ProvedoresRecord([void Function(ProvedoresRecordBuilder) updates]) =
      _$ProvedoresRecord;

  static ProvedoresRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProvedoresRecordData({
  String? nombre,
  String? direccion,
  int? telefono,
}) {
  final firestoreData = serializers.toFirestore(
    ProvedoresRecord.serializer,
    ProvedoresRecord(
      (p) => p
        ..nombre = nombre
        ..direccion = direccion
        ..telefono = telefono,
    ),
  );

  return firestoreData;
}
