// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refuge_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RefugeRecord> _$refugeRecordSerializer =
    new _$RefugeRecordSerializer();

class _$RefugeRecordSerializer implements StructuredSerializer<RefugeRecord> {
  @override
  final Iterable<Type> types = const [RefugeRecord, _$RefugeRecord];
  @override
  final String wireName = 'RefugeRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, RefugeRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.nom;
    if (value != null) {
      result
        ..add('nom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numeroEtRue;
    if (value != null) {
      result
        ..add('numeroEtRue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.codePostal;
    if (value != null) {
      result
        ..add('codePostal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ville;
    if (value != null) {
      result
        ..add('ville')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tel;
    if (value != null) {
      result
        ..add('tel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.animaux;
    if (value != null) {
      result
        ..add('animaux')
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
  RefugeRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RefugeRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'nom':
          result.nom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'numeroEtRue':
          result.numeroEtRue = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'codePostal':
          result.codePostal = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ville':
          result.ville = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tel':
          result.tel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'animaux':
          result.animaux.replace(serializers.deserialize(value,
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

class _$RefugeRecord extends RefugeRecord {
  @override
  final String nom;
  @override
  final String numeroEtRue;
  @override
  final String codePostal;
  @override
  final String ville;
  @override
  final String tel;
  @override
  final String description;
  @override
  final BuiltList<DocumentReference<Object>> animaux;
  @override
  final DocumentReference<Object> reference;

  factory _$RefugeRecord([void Function(RefugeRecordBuilder) updates]) =>
      (new RefugeRecordBuilder()..update(updates)).build();

  _$RefugeRecord._(
      {this.nom,
      this.numeroEtRue,
      this.codePostal,
      this.ville,
      this.tel,
      this.description,
      this.animaux,
      this.reference})
      : super._();

  @override
  RefugeRecord rebuild(void Function(RefugeRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RefugeRecordBuilder toBuilder() => new RefugeRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefugeRecord &&
        nom == other.nom &&
        numeroEtRue == other.numeroEtRue &&
        codePostal == other.codePostal &&
        ville == other.ville &&
        tel == other.tel &&
        description == other.description &&
        animaux == other.animaux &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, nom.hashCode), numeroEtRue.hashCode),
                            codePostal.hashCode),
                        ville.hashCode),
                    tel.hashCode),
                description.hashCode),
            animaux.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RefugeRecord')
          ..add('nom', nom)
          ..add('numeroEtRue', numeroEtRue)
          ..add('codePostal', codePostal)
          ..add('ville', ville)
          ..add('tel', tel)
          ..add('description', description)
          ..add('animaux', animaux)
          ..add('reference', reference))
        .toString();
  }
}

class RefugeRecordBuilder
    implements Builder<RefugeRecord, RefugeRecordBuilder> {
  _$RefugeRecord _$v;

  String _nom;
  String get nom => _$this._nom;
  set nom(String nom) => _$this._nom = nom;

  String _numeroEtRue;
  String get numeroEtRue => _$this._numeroEtRue;
  set numeroEtRue(String numeroEtRue) => _$this._numeroEtRue = numeroEtRue;

  String _codePostal;
  String get codePostal => _$this._codePostal;
  set codePostal(String codePostal) => _$this._codePostal = codePostal;

  String _ville;
  String get ville => _$this._ville;
  set ville(String ville) => _$this._ville = ville;

  String _tel;
  String get tel => _$this._tel;
  set tel(String tel) => _$this._tel = tel;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  ListBuilder<DocumentReference<Object>> _animaux;
  ListBuilder<DocumentReference<Object>> get animaux =>
      _$this._animaux ??= new ListBuilder<DocumentReference<Object>>();
  set animaux(ListBuilder<DocumentReference<Object>> animaux) =>
      _$this._animaux = animaux;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  RefugeRecordBuilder() {
    RefugeRecord._initializeBuilder(this);
  }

  RefugeRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nom = $v.nom;
      _numeroEtRue = $v.numeroEtRue;
      _codePostal = $v.codePostal;
      _ville = $v.ville;
      _tel = $v.tel;
      _description = $v.description;
      _animaux = $v.animaux?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RefugeRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RefugeRecord;
  }

  @override
  void update(void Function(RefugeRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RefugeRecord build() {
    _$RefugeRecord _$result;
    try {
      _$result = _$v ??
          new _$RefugeRecord._(
              nom: nom,
              numeroEtRue: numeroEtRue,
              codePostal: codePostal,
              ville: ville,
              tel: tel,
              description: description,
              animaux: _animaux?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'animaux';
        _animaux?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RefugeRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
