// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servicios_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServiciosRecord> _$serviciosRecordSerializer =
    new _$ServiciosRecordSerializer();

class _$ServiciosRecordSerializer
    implements StructuredSerializer<ServiciosRecord> {
  @override
  final Iterable<Type> types = const [ServiciosRecord, _$ServiciosRecord];
  @override
  final String wireName = 'ServiciosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ServiciosRecord object,
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
    value = object.precio;
    if (value != null) {
      result
        ..add('Precio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.descripcion;
    if (value != null) {
      result
        ..add('Descripcion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagen;
    if (value != null) {
      result
        ..add('Imagen')
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
  ServiciosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServiciosRecordBuilder();

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
        case 'Precio':
          result.precio = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Descripcion':
          result.descripcion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Imagen':
          result.imagen = serializers.deserialize(value,
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

class _$ServiciosRecord extends ServiciosRecord {
  @override
  final String? nombre;
  @override
  final double? precio;
  @override
  final String? descripcion;
  @override
  final String? imagen;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ServiciosRecord([void Function(ServiciosRecordBuilder)? updates]) =>
      (new ServiciosRecordBuilder()..update(updates))._build();

  _$ServiciosRecord._(
      {this.nombre, this.precio, this.descripcion, this.imagen, this.ffRef})
      : super._();

  @override
  ServiciosRecord rebuild(void Function(ServiciosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiciosRecordBuilder toBuilder() =>
      new ServiciosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiciosRecord &&
        nombre == other.nombre &&
        precio == other.precio &&
        descripcion == other.descripcion &&
        imagen == other.imagen &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, precio.hashCode);
    _$hash = $jc(_$hash, descripcion.hashCode);
    _$hash = $jc(_$hash, imagen.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiciosRecord')
          ..add('nombre', nombre)
          ..add('precio', precio)
          ..add('descripcion', descripcion)
          ..add('imagen', imagen)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ServiciosRecordBuilder
    implements Builder<ServiciosRecord, ServiciosRecordBuilder> {
  _$ServiciosRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  double? _precio;
  double? get precio => _$this._precio;
  set precio(double? precio) => _$this._precio = precio;

  String? _descripcion;
  String? get descripcion => _$this._descripcion;
  set descripcion(String? descripcion) => _$this._descripcion = descripcion;

  String? _imagen;
  String? get imagen => _$this._imagen;
  set imagen(String? imagen) => _$this._imagen = imagen;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ServiciosRecordBuilder() {
    ServiciosRecord._initializeBuilder(this);
  }

  ServiciosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _precio = $v.precio;
      _descripcion = $v.descripcion;
      _imagen = $v.imagen;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiciosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServiciosRecord;
  }

  @override
  void update(void Function(ServiciosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiciosRecord build() => _build();

  _$ServiciosRecord _build() {
    final _$result = _$v ??
        new _$ServiciosRecord._(
            nombre: nombre,
            precio: precio,
            descripcion: descripcion,
            imagen: imagen,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
