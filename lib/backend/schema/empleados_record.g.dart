// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empleados_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EmpleadosRecord> _$empleadosRecordSerializer =
    new _$EmpleadosRecordSerializer();

class _$EmpleadosRecordSerializer
    implements StructuredSerializer<EmpleadosRecord> {
  @override
  final Iterable<Type> types = const [EmpleadosRecord, _$EmpleadosRecord];
  @override
  final String wireName = 'EmpleadosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EmpleadosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('Nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.direccion;
    if (value != null) {
      result
        ..add('Direccion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.telefono;
    if (value != null) {
      result
        ..add('Telefono')
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
  EmpleadosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EmpleadosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Direccion':
          result.direccion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Telefono':
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

class _$EmpleadosRecord extends EmpleadosRecord {
  @override
  final String? nombre;
  @override
  final String? direccion;
  @override
  final int? telefono;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EmpleadosRecord([void Function(EmpleadosRecordBuilder)? updates]) =>
      (new EmpleadosRecordBuilder()..update(updates))._build();

  _$EmpleadosRecord._({this.nombre, this.direccion, this.telefono, this.ffRef})
      : super._();

  @override
  EmpleadosRecord rebuild(void Function(EmpleadosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmpleadosRecordBuilder toBuilder() =>
      new EmpleadosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmpleadosRecord &&
        nombre == other.nombre &&
        direccion == other.direccion &&
        telefono == other.telefono &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, direccion.hashCode);
    _$hash = $jc(_$hash, telefono.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EmpleadosRecord')
          ..add('nombre', nombre)
          ..add('direccion', direccion)
          ..add('telefono', telefono)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EmpleadosRecordBuilder
    implements Builder<EmpleadosRecord, EmpleadosRecordBuilder> {
  _$EmpleadosRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _direccion;
  String? get direccion => _$this._direccion;
  set direccion(String? direccion) => _$this._direccion = direccion;

  int? _telefono;
  int? get telefono => _$this._telefono;
  set telefono(int? telefono) => _$this._telefono = telefono;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EmpleadosRecordBuilder() {
    EmpleadosRecord._initializeBuilder(this);
  }

  EmpleadosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _direccion = $v.direccion;
      _telefono = $v.telefono;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmpleadosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmpleadosRecord;
  }

  @override
  void update(void Function(EmpleadosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmpleadosRecord build() => _build();

  _$EmpleadosRecord _build() {
    final _$result = _$v ??
        new _$EmpleadosRecord._(
            nombre: nombre,
            direccion: direccion,
            telefono: telefono,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
