// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productos_gustados_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductosGustadosRecord> _$productosGustadosRecordSerializer =
    new _$ProductosGustadosRecordSerializer();

class _$ProductosGustadosRecordSerializer
    implements StructuredSerializer<ProductosGustadosRecord> {
  @override
  final Iterable<Type> types = const [
    ProductosGustadosRecord,
    _$ProductosGustadosRecord
  ];
  @override
  final String wireName = 'ProductosGustadosRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ProductosGustadosRecord object,
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
  ProductosGustadosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductosGustadosRecordBuilder();

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

class _$ProductosGustadosRecord extends ProductosGustadosRecord {
  @override
  final String? nombre;
  @override
  final double? precio;
  @override
  final String? imagen;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProductosGustadosRecord(
          [void Function(ProductosGustadosRecordBuilder)? updates]) =>
      (new ProductosGustadosRecordBuilder()..update(updates))._build();

  _$ProductosGustadosRecord._(
      {this.nombre, this.precio, this.imagen, this.ffRef})
      : super._();

  @override
  ProductosGustadosRecord rebuild(
          void Function(ProductosGustadosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductosGustadosRecordBuilder toBuilder() =>
      new ProductosGustadosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductosGustadosRecord &&
        nombre == other.nombre &&
        precio == other.precio &&
        imagen == other.imagen &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, precio.hashCode);
    _$hash = $jc(_$hash, imagen.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductosGustadosRecord')
          ..add('nombre', nombre)
          ..add('precio', precio)
          ..add('imagen', imagen)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProductosGustadosRecordBuilder
    implements
        Builder<ProductosGustadosRecord, ProductosGustadosRecordBuilder> {
  _$ProductosGustadosRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  double? _precio;
  double? get precio => _$this._precio;
  set precio(double? precio) => _$this._precio = precio;

  String? _imagen;
  String? get imagen => _$this._imagen;
  set imagen(String? imagen) => _$this._imagen = imagen;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProductosGustadosRecordBuilder() {
    ProductosGustadosRecord._initializeBuilder(this);
  }

  ProductosGustadosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _precio = $v.precio;
      _imagen = $v.imagen;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductosGustadosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductosGustadosRecord;
  }

  @override
  void update(void Function(ProductosGustadosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductosGustadosRecord build() => _build();

  _$ProductosGustadosRecord _build() {
    final _$result = _$v ??
        new _$ProductosGustadosRecord._(
            nombre: nombre, precio: precio, imagen: imagen, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
