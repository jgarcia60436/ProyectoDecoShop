// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clientes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ClientesRecord> _$clientesRecordSerializer =
    new _$ClientesRecordSerializer();

class _$ClientesRecordSerializer
    implements StructuredSerializer<ClientesRecord> {
  @override
  final Iterable<Type> types = const [ClientesRecord, _$ClientesRecord];
  @override
  final String wireName = 'ClientesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ClientesRecord object,
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
  ClientesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClientesRecordBuilder();

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

class _$ClientesRecord extends ClientesRecord {
  @override
  final String? nombreCompleto;
  @override
  final String? direccion;
  @override
  final int? telefono;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ClientesRecord([void Function(ClientesRecordBuilder)? updates]) =>
      (new ClientesRecordBuilder()..update(updates))._build();

  _$ClientesRecord._(
      {this.nombreCompleto, this.direccion, this.telefono, this.ffRef})
      : super._();

  @override
  ClientesRecord rebuild(void Function(ClientesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientesRecordBuilder toBuilder() =>
      new ClientesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientesRecord &&
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
    return (newBuiltValueToStringHelper(r'ClientesRecord')
          ..add('nombreCompleto', nombreCompleto)
          ..add('direccion', direccion)
          ..add('telefono', telefono)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ClientesRecordBuilder
    implements Builder<ClientesRecord, ClientesRecordBuilder> {
  _$ClientesRecord? _$v;

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

  ClientesRecordBuilder() {
    ClientesRecord._initializeBuilder(this);
  }

  ClientesRecordBuilder get _$this {
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
  void replace(ClientesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientesRecord;
  }

  @override
  void update(void Function(ClientesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientesRecord build() => _build();

  _$ClientesRecord _build() {
    final _$result = _$v ??
        new _$ClientesRecord._(
            nombreCompleto: nombreCompleto,
            direccion: direccion,
            telefono: telefono,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
