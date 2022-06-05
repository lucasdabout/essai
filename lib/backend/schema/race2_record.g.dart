// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'race2_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Race2Record> _$race2RecordSerializer = new _$Race2RecordSerializer();

class _$Race2RecordSerializer implements StructuredSerializer<Race2Record> {
  @override
  final Iterable<Type> types = const [Race2Record, _$Race2Record];
  @override
  final String wireName = 'Race2Record';

  @override
  Iterable<Object> serialize(Serializers serializers, Race2Record object,
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
    value = object.descriptif;
    if (value != null) {
      result
        ..add('descriptif')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prerequis;
    if (value != null) {
      result
        ..add('prerequis')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  Race2Record deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Race2RecordBuilder();

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
        case 'descriptif':
          result.descriptif = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prerequis':
          result.prerequis = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$Race2Record extends Race2Record {
  @override
  final String libelle;
  @override
  final String descriptif;
  @override
  final String prerequis;
  @override
  final DocumentReference<Object> reference;

  factory _$Race2Record([void Function(Race2RecordBuilder) updates]) =>
      (new Race2RecordBuilder()..update(updates)).build();

  _$Race2Record._(
      {this.libelle, this.descriptif, this.prerequis, this.reference})
      : super._();

  @override
  Race2Record rebuild(void Function(Race2RecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Race2RecordBuilder toBuilder() => new Race2RecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Race2Record &&
        libelle == other.libelle &&
        descriptif == other.descriptif &&
        prerequis == other.prerequis &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, libelle.hashCode), descriptif.hashCode),
            prerequis.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Race2Record')
          ..add('libelle', libelle)
          ..add('descriptif', descriptif)
          ..add('prerequis', prerequis)
          ..add('reference', reference))
        .toString();
  }
}

class Race2RecordBuilder implements Builder<Race2Record, Race2RecordBuilder> {
  _$Race2Record _$v;

  String _libelle;
  String get libelle => _$this._libelle;
  set libelle(String libelle) => _$this._libelle = libelle;

  String _descriptif;
  String get descriptif => _$this._descriptif;
  set descriptif(String descriptif) => _$this._descriptif = descriptif;

  String _prerequis;
  String get prerequis => _$this._prerequis;
  set prerequis(String prerequis) => _$this._prerequis = prerequis;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  Race2RecordBuilder() {
    Race2Record._initializeBuilder(this);
  }

  Race2RecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _libelle = $v.libelle;
      _descriptif = $v.descriptif;
      _prerequis = $v.prerequis;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Race2Record other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Race2Record;
  }

  @override
  void update(void Function(Race2RecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Race2Record build() {
    final _$result = _$v ??
        new _$Race2Record._(
            libelle: libelle,
            descriptif: descriptif,
            prerequis: prerequis,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
