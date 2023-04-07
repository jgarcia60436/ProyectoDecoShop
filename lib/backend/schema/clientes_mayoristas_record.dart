import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'clientes_mayoristas_record.g.dart';

abstract class ClientesMayoristasRecord
    implements
        Built<ClientesMayoristasRecord, ClientesMayoristasRecordBuilder> {
  static Serializer<ClientesMayoristasRecord> get serializer =>
      _$clientesMayoristasRecordSerializer;

  String? get nombreCompleto;

  String? get direccion;

  int? get telefono;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ClientesMayoristasRecordBuilder builder) =>
      builder
        ..nombreCompleto = ''
        ..direccion = ''
        ..telefono = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clientes-mayoristas');

  static Stream<ClientesMayoristasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ClientesMayoristasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ClientesMayoristasRecord._();
  factory ClientesMayoristasRecord(
          [void Function(ClientesMayoristasRecordBuilder) updates]) =
      _$ClientesMayoristasRecord;

  static ClientesMayoristasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createClientesMayoristasRecordData({
  String? nombreCompleto,
  String? direccion,
  int? telefono,
}) {
  final firestoreData = serializers.toFirestore(
    ClientesMayoristasRecord.serializer,
    ClientesMayoristasRecord(
      (c) => c
        ..nombreCompleto = nombreCompleto
        ..direccion = direccion
        ..telefono = telefono,
    ),
  );

  return firestoreData;
}
