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
    value = object.animaux;
    if (value != null) {
      result
        ..add('animaux')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.typePoil;
    if (value != null) {
      result
        ..add('typePoil')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.origine;
    if (value != null) {
      result
        ..add('origine')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gabarit;
    if (value != null) {
      result
        ..add('gabarit')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.formeTete;
    if (value != null) {
      result
        ..add('formeTete')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.poidsFemelle;
    if (value != null) {
      result
        ..add('poidsFemelle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.poidsMale;
    if (value != null) {
      result
        ..add('poidsMale')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tailleFemelle;
    if (value != null) {
      result
        ..add('tailleFemelle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tailleMale;
    if (value != null) {
      result
        ..add('tailleMale')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.particularite;
    if (value != null) {
      result
        ..add('particularite')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.historiqueRace;
    if (value != null) {
      result
        ..add('historiqueRace')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comportement;
    if (value != null) {
      result
        ..add('comportement')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imgRace;
    if (value != null) {
      result
        ..add('imgRace')
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
        case 'animaux':
          result.animaux.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'typePoil':
          result.typePoil = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'origine':
          result.origine = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gabarit':
          result.gabarit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'formeTete':
          result.formeTete = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'poidsFemelle':
          result.poidsFemelle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'poidsMale':
          result.poidsMale = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tailleFemelle':
          result.tailleFemelle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tailleMale':
          result.tailleMale = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'particularite':
          result.particularite = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'historiqueRace':
          result.historiqueRace = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'comportement':
          result.comportement = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imgRace':
          result.imgRace = serializers.deserialize(value,
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
  final BuiltList<DocumentReference<Object>> animaux;
  @override
  final String typePoil;
  @override
  final String origine;
  @override
  final String gabarit;
  @override
  final String formeTete;
  @override
  final String poidsFemelle;
  @override
  final String poidsMale;
  @override
  final String tailleFemelle;
  @override
  final String tailleMale;
  @override
  final String particularite;
  @override
  final String historiqueRace;
  @override
  final String comportement;
  @override
  final String imgRace;
  @override
  final DocumentReference<Object> reference;

  factory _$Race2Record([void Function(Race2RecordBuilder) updates]) =>
      (new Race2RecordBuilder()..update(updates)).build();

  _$Race2Record._(
      {this.libelle,
      this.descriptif,
      this.animaux,
      this.typePoil,
      this.origine,
      this.gabarit,
      this.formeTete,
      this.poidsFemelle,
      this.poidsMale,
      this.tailleFemelle,
      this.tailleMale,
      this.particularite,
      this.historiqueRace,
      this.comportement,
      this.imgRace,
      this.reference})
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
        animaux == other.animaux &&
        typePoil == other.typePoil &&
        origine == other.origine &&
        gabarit == other.gabarit &&
        formeTete == other.formeTete &&
        poidsFemelle == other.poidsFemelle &&
        poidsMale == other.poidsMale &&
        tailleFemelle == other.tailleFemelle &&
        tailleMale == other.tailleMale &&
        particularite == other.particularite &&
        historiqueRace == other.historiqueRace &&
        comportement == other.comportement &&
        imgRace == other.imgRace &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    libelle
                                                                        .hashCode),
                                                                descriptif
                                                                    .hashCode),
                                                            animaux.hashCode),
                                                        typePoil.hashCode),
                                                    origine.hashCode),
                                                gabarit.hashCode),
                                            formeTete.hashCode),
                                        poidsFemelle.hashCode),
                                    poidsMale.hashCode),
                                tailleFemelle.hashCode),
                            tailleMale.hashCode),
                        particularite.hashCode),
                    historiqueRace.hashCode),
                comportement.hashCode),
            imgRace.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Race2Record')
          ..add('libelle', libelle)
          ..add('descriptif', descriptif)
          ..add('animaux', animaux)
          ..add('typePoil', typePoil)
          ..add('origine', origine)
          ..add('gabarit', gabarit)
          ..add('formeTete', formeTete)
          ..add('poidsFemelle', poidsFemelle)
          ..add('poidsMale', poidsMale)
          ..add('tailleFemelle', tailleFemelle)
          ..add('tailleMale', tailleMale)
          ..add('particularite', particularite)
          ..add('historiqueRace', historiqueRace)
          ..add('comportement', comportement)
          ..add('imgRace', imgRace)
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

  ListBuilder<DocumentReference<Object>> _animaux;
  ListBuilder<DocumentReference<Object>> get animaux =>
      _$this._animaux ??= new ListBuilder<DocumentReference<Object>>();
  set animaux(ListBuilder<DocumentReference<Object>> animaux) =>
      _$this._animaux = animaux;

  String _typePoil;
  String get typePoil => _$this._typePoil;
  set typePoil(String typePoil) => _$this._typePoil = typePoil;

  String _origine;
  String get origine => _$this._origine;
  set origine(String origine) => _$this._origine = origine;

  String _gabarit;
  String get gabarit => _$this._gabarit;
  set gabarit(String gabarit) => _$this._gabarit = gabarit;

  String _formeTete;
  String get formeTete => _$this._formeTete;
  set formeTete(String formeTete) => _$this._formeTete = formeTete;

  String _poidsFemelle;
  String get poidsFemelle => _$this._poidsFemelle;
  set poidsFemelle(String poidsFemelle) => _$this._poidsFemelle = poidsFemelle;

  String _poidsMale;
  String get poidsMale => _$this._poidsMale;
  set poidsMale(String poidsMale) => _$this._poidsMale = poidsMale;

  String _tailleFemelle;
  String get tailleFemelle => _$this._tailleFemelle;
  set tailleFemelle(String tailleFemelle) =>
      _$this._tailleFemelle = tailleFemelle;

  String _tailleMale;
  String get tailleMale => _$this._tailleMale;
  set tailleMale(String tailleMale) => _$this._tailleMale = tailleMale;

  String _particularite;
  String get particularite => _$this._particularite;
  set particularite(String particularite) =>
      _$this._particularite = particularite;

  String _historiqueRace;
  String get historiqueRace => _$this._historiqueRace;
  set historiqueRace(String historiqueRace) =>
      _$this._historiqueRace = historiqueRace;

  String _comportement;
  String get comportement => _$this._comportement;
  set comportement(String comportement) => _$this._comportement = comportement;

  String _imgRace;
  String get imgRace => _$this._imgRace;
  set imgRace(String imgRace) => _$this._imgRace = imgRace;

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
      _animaux = $v.animaux?.toBuilder();
      _typePoil = $v.typePoil;
      _origine = $v.origine;
      _gabarit = $v.gabarit;
      _formeTete = $v.formeTete;
      _poidsFemelle = $v.poidsFemelle;
      _poidsMale = $v.poidsMale;
      _tailleFemelle = $v.tailleFemelle;
      _tailleMale = $v.tailleMale;
      _particularite = $v.particularite;
      _historiqueRace = $v.historiqueRace;
      _comportement = $v.comportement;
      _imgRace = $v.imgRace;
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
    _$Race2Record _$result;
    try {
      _$result = _$v ??
          new _$Race2Record._(
              libelle: libelle,
              descriptif: descriptif,
              animaux: _animaux?.build(),
              typePoil: typePoil,
              origine: origine,
              gabarit: gabarit,
              formeTete: formeTete,
              poidsFemelle: poidsFemelle,
              poidsMale: poidsMale,
              tailleFemelle: tailleFemelle,
              tailleMale: tailleMale,
              particularite: particularite,
              historiqueRace: historiqueRace,
              comportement: comportement,
              imgRace: imgRace,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'animaux';
        _animaux?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Race2Record', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
