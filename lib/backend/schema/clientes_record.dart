import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'clientes_record.g.dart';

abstract class ClientesRecord
    implements Built<ClientesRecord, ClientesRecordBuilder> {
  static Serializer<ClientesRecord> get serializer =>
      _$clientesRecordSerializer;

  String? get nombreCompleto;

  String? get direccion;

  int? get telefono;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ClientesRecordBuilder builder) => builder
    ..nombreCompleto = ''
    ..direccion = ''
    ..telefono = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clientes');

  static Stream<ClientesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ClientesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ClientesRecord._();
  factory ClientesRecord([void Function(ClientesRecordBuilder) updates]) =
      _$ClientesRecord;

  static ClientesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createClientesRecordData({
  String? nombreCompleto,
  String? direccion,
  int? telefono,
}) {
  final firestoreData = serializers.toFirestore(
    ClientesRecord.serializer,
    ClientesRecord(
      (c) => c
        ..nombreCompleto = nombreCompleto
        ..direccion = direccion
        ..telefono = telefono,
    ),
  );

  return firestoreData;
}
