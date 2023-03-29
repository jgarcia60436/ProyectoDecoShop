// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compra_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompraRecord> _$compraRecordSerializer =
    new _$CompraRecordSerializer();

class _$CompraRecordSerializer implements StructuredSerializer<CompraRecord> {
  @override
  final Iterable<Type> types = const [CompraRecord, _$CompraRecord];
  @override
  final String wireName = 'CompraRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CompraRecord object,
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
    value = object.cantidad;
    if (value != null) {
      result
        ..add('Cantidad')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.imagen;
    if (value != null) {
      result
        ..add('imagen')
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
  CompraRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompraRecordBuilder();

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
        case 'Cantidad':
          result.cantidad = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'imagen':
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

class _$CompraRecord extends CompraRecord {
  @override
  final String? nombre;
  @override
  final double? precio;
  @override
  final String? descripcion;
  @override
  final int? cantidad;
  @override
  final String? imagen;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CompraRecord([void Function(CompraRecordBuilder)? updates]) =>
      (new CompraRecordBuilder()..update(updates))._build();

  _$CompraRecord._(
      {this.nombre,
      this.precio,
      this.descripcion,
      this.cantidad,
      this.imagen,
      this.ffRef})
      : super._();

  @override
  CompraRecord rebuild(void Function(CompraRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompraRecordBuilder toBuilder() => new CompraRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompraRecord &&
        nombre == other.nombre &&
        precio == other.precio &&
        descripcion == other.descripcion &&
        cantidad == other.cantidad &&
        imagen == other.imagen &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, precio.hashCode);
    _$hash = $jc(_$hash, descripcion.hashCode);
    _$hash = $jc(_$hash, cantidad.hashCode);
    _$hash = $jc(_$hash, imagen.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompraRecord')
          ..add('nombre', nombre)
          ..add('precio', precio)
          ..add('descripcion', descripcion)
          ..add('cantidad', cantidad)
          ..add('imagen', imagen)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CompraRecordBuilder
    implements Builder<CompraRecord, CompraRecordBuilder> {
  _$CompraRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  double? _precio;
  double? get precio => _$this._precio;
  set precio(double? precio) => _$this._precio = precio;

  String? _descripcion;
  String? get descripcion => _$this._descripcion;
  set descripcion(String? descripcion) => _$this._descripcion = descripcion;

  int? _cantidad;
  int? get cantidad => _$this._cantidad;
  set cantidad(int? cantidad) => _$this._cantidad = cantidad;

  String? _imagen;
  String? get imagen => _$this._imagen;
  set imagen(String? imagen) => _$this._imagen = imagen;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CompraRecordBuilder() {
    CompraRecord._initializeBuilder(this);
  }

  CompraRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _precio = $v.precio;
      _descripcion = $v.descripcion;
      _cantidad = $v.cantidad;
      _imagen = $v.imagen;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompraRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompraRecord;
  }

  @override
  void update(void Function(CompraRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompraRecord build() => _build();

  _$CompraRecord _build() {
    final _$result = _$v ??
        new _$CompraRecord._(
            nombre: nombre,
            precio: precio,
            descripcion: descripcion,
            cantidad: cantidad,
            imagen: imagen,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
