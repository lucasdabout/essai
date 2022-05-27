// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'espece2_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Espece2Record> _$espece2RecordSerializer =
    new _$Espece2RecordSerializer();

class _$Espece2RecordSerializer implements StructuredSerializer<Espece2Record> {
  @override
  final Iterable<Type> types = const [Espece2Record, _$Espece2Record];
  @override
  final String wireName = 'Espece2Record';

  @override
  Iterable<Object> serialize(Serializers serializers, Espece2Record object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.libelle;
    if (value != null) {
      result
        ..add('libelle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.frais;
    if (value != null) {
      result
        ..add('frais')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.animals;
    if (value != null) {
      result
        ..add('animals')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  Espece2Record deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Espece2RecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'libelle':
          result.libelle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'frais':
          result.frais = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'animals':
          result.animals.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$Espece2Record extends Espece2Record {
  @override
  final String libelle;
  @override
  final int frais;
  @override
  final BuiltList<DocumentReference<Object>> animals;
  @override
  final DocumentReference<Object> reference;

  factory _$Espece2Record([void Function(Espece2RecordBuilder) updates]) =>
      (new Espece2RecordBuilder()..update(updates))._build();

  _$Espece2Record._({this.libelle, this.frais, this.animals, this.reference})
      : super._();

  @override
  Espece2Record rebuild(void Function(Espece2RecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Espece2RecordBuilder toBuilder() => new Espece2RecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Espece2Record &&
        libelle == other.libelle &&
        frais == other.frais &&
        animals == other.animals &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, libelle.hashCode), frais.hashCode), animals.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Espece2Record')
          ..add('libelle', libelle)
          ..add('frais', frais)
          ..add('animals', animals)
          ..add('reference', reference))
        .toString();
  }
}

class Espece2RecordBuilder
    implements Builder<Espece2Record, Espece2RecordBuilder> {
  _$Espece2Record _$v;

  String _libelle;
  String get libelle => _$this._libelle;
  set libelle(String libelle) => _$this._libelle = libelle;

  int _frais;
  int get frais => _$this._frais;
  set frais(int frais) => _$this._frais = frais;

  ListBuilder<DocumentReference<Object>> _animals;
  ListBuilder<DocumentReference<Object>> get animals =>
      _$this._animals ??= new ListBuilder<DocumentReference<Object>>();
  set animals(ListBuilder<DocumentReference<Object>> animals) =>
      _$this._animals = animals;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  Espece2RecordBuilder() {
    Espece2Record._initializeBuilder(this);
  }

  Espece2RecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _libelle = $v.libelle;
      _frais = $v.frais;
      _animals = $v.animals?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Espece2Record other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Espece2Record;
  }

  @override
  void update(void Function(Espece2RecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  Espece2Record build() => _build();

  _$Espece2Record _build() {
    _$Espece2Record _$result;
    try {
      _$result = _$v ??
          new _$Espece2Record._(
              libelle: libelle,
              frais: frais,
              animals: _animals?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'animals';
        _animals?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Espece2Record', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
