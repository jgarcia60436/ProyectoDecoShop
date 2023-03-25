// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ConsultasRecord> _$consultasRecordSerializer =
    new _$ConsultasRecordSerializer();

class _$ConsultasRecordSerializer
    implements StructuredSerializer<ConsultasRecord> {
  @override
  final Iterable<Type> types = const [ConsultasRecord, _$ConsultasRecord];
  @override
  final String wireName = 'ConsultasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ConsultasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.consultaClientes;
    if (value != null) {
      result
        ..add('Consulta_clientes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  ConsultasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConsultasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Consulta_clientes':
          result.consultaClientes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$ConsultasRecord extends ConsultasRecord {
  @override
  final String? consultaClientes;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ConsultasRecord([void Function(ConsultasRecordBuilder)? updates]) =>
      (new ConsultasRecordBuilder()..update(updates))._build();

  _$ConsultasRecord._({this.consultaClientes, this.ffRef}) : super._();

  @override
  ConsultasRecord rebuild(void Function(ConsultasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsultasRecordBuilder toBuilder() =>
      new ConsultasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsultasRecord &&
        consultaClientes == other.consultaClientes &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, consultaClientes.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsultasRecord')
          ..add('consultaClientes', consultaClientes)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ConsultasRecordBuilder
    implements Builder<ConsultasRecord, ConsultasRecordBuilder> {
  _$ConsultasRecord? _$v;

  String? _consultaClientes;
  String? get consultaClientes => _$this._consultaClientes;
  set consultaClientes(String? consultaClientes) =>
      _$this._consultaClientes = consultaClientes;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ConsultasRecordBuilder() {
    ConsultasRecord._initializeBuilder(this);
  }

  ConsultasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _consultaClientes = $v.consultaClientes;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsultasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConsultasRecord;
  }

  @override
  void update(void Function(ConsultasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsultasRecord build() => _build();

  _$ConsultasRecord _build() {
    final _$result = _$v ??
        new _$ConsultasRecord._(
            consultaClientes: consultaClientes, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
