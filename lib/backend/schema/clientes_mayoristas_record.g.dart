// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clientes_mayoristas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ClientesMayoristasRecord> _$clientesMayoristasRecordSerializer =
    new _$ClientesMayoristasRecordSerializer();

class _$ClientesMayoristasRecordSerializer
    implements StructuredSerializer<ClientesMayoristasRecord> {
  @override
  final Iterable<Type> types = const [
    ClientesMayoristasRecord,
    _$ClientesMayoristasRecord
  ];
  @override
  final String wireName = 'ClientesMayoristasRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ClientesMayoristasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombreCompleto;
    if (value != null) {
      result
        ..add('nombreCompleto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.direccion;
    if (value != null) {
      result
        ..add('direccion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.telefono;
    if (value != null) {
      result
        ..add('telefono')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ClientesMayoristasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClientesMayoristasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombreCompleto':
          result.nombreCompleto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'direccion':
          result.direccion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'telefono':
          result.telefono = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ClientesMayoristasRecord extends ClientesMayoristasRecord {
  @override
  final String? nombreCompleto;
  @override
  final String? direccion;
  @override
  final int? telefono;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ClientesMayoristasRecord(
          [void Function(ClientesMayoristasRecordBuilder)? updates]) =>
      (new ClientesMayoristasRecordBuilder()..update(updates))._build();

  _$ClientesMayoristasRecord._(
      {this.nombreCompleto, this.direccion, this.telefono, this.ffRef})
      : super._();

  @override
  ClientesMayoristasRecord rebuild(
          void Function(ClientesMayoristasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientesMayoristasRecordBuilder toBuilder() =>
      new ClientesMayoristasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientesMayoristasRecord &&
        nombreCompleto == other.nombreCompleto &&
        direccion == other.direccion &&
        telefono == other.telefono &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombreCompleto.hashCode);
    _$hash = $jc(_$hash, direccion.hashCode);
    _$hash = $jc(_$hash, telefono.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClientesMayoristasRecord')
          ..add('nombreCompleto', nombreCompleto)
          ..add('direccion', direccion)
          ..add('telefono', telefono)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ClientesMayoristasRecordBuilder
    implements
        Builder<ClientesMayoristasRecord, ClientesMayoristasRecordBuilder> {
  _$ClientesMayoristasRecord? _$v;

  String? _nombreCompleto;
  String? get nombreCompleto => _$this._nombreCompleto;
  set nombreCompleto(String? nombreCompleto) =>
      _$this._nombreCompleto = nombreCompleto;

  String? _direccion;
  String? get direccion => _$this._direccion;
  set direccion(String? direccion) => _$this._direccion = direccion;

  int? _telefono;
  int? get telefono => _$this._telefono;
  set telefono(int? telefono) => _$this._telefono = telefono;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ClientesMayoristasRecordBuilder() {
    ClientesMayoristasRecord._initializeBuilder(this);
  }

  ClientesMayoristasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombreCompleto = $v.nombreCompleto;
      _direccion = $v.direccion;
      _telefono = $v.telefono;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientesMayoristasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientesMayoristasRecord;
  }

  @override
  void update(void Function(ClientesMayoristasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientesMayoristasRecord build() => _build();

  _$ClientesMayoristasRecord _build() {
    final _$result = _$v ??
        new _$ClientesMayoristasRecord._(
            nombreCompleto: nombreCompleto,
            direccion: direccion,
            telefono: telefono,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
