// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AnimalRecord> _$animalRecordSerializer =
    new _$AnimalRecordSerializer();

class _$AnimalRecordSerializer implements StructuredSerializer<AnimalRecord> {
  @override
  final Iterable<Type> types = const [AnimalRecord, _$AnimalRecord];
  @override
  final String wireName = 'AnimalRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, AnimalRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nom;
    if (value != null) {
      result
        ..add('nom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateNaissance;
    if (value != null) {
      result
        ..add('dateNaissance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.sexe;
    if (value != null) {
      result
        ..add('sexe')
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
    value = object.couleur;
    if (value != null) {
      result
        ..add('couleur')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sos;
    if (value != null) {
      result
        ..add('sos')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.frais;
    if (value != null) {
      result
        ..add('frais')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.libelleEspece;
    if (value != null) {
      result
        ..add('libelleEspece')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refugeanimal;
    if (value != null) {
      result
        ..add('refugeanimal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.favoris;
    if (value != null) {
      result
        ..add('favoris')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.taille;
    if (value != null) {
      result
        ..add('taille')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.race;
    if (value != null) {
      result
        ..add('race')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
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
  AnimalRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnimalRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nom':
          result.nom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dateNaissance':
          result.dateNaissance = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'sexe':
          result.sexe = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'couleur':
          result.couleur = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sos':
          result.sos = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'frais':
          result.frais = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'libelleEspece':
          result.libelleEspece = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'refugeanimal':
          result.refugeanimal = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'favoris':
          result.favoris = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'taille':
          result.taille = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'race':
          result.race = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
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

class _$AnimalRecord extends AnimalRecord {
  @override
  final String imageUrl;
  @override
  final String nom;
  @override
  final DateTime dateNaissance;
  @override
  final String sexe;
  @override
  final String description;
  @override
  final String couleur;
  @override
  final bool sos;
  @override
  final int frais;
  @override
  final String libelleEspece;
  @override
  final DocumentReference<Object> refugeanimal;
  @override
  final bool favoris;
  @override
  final int taille;
  @override
  final DocumentReference<Object> race;
  @override
  final DocumentReference<Object> reference;

  factory _$AnimalRecord([void Function(AnimalRecordBuilder) updates]) =>
      (new AnimalRecordBuilder()..update(updates)).build();

  _$AnimalRecord._(
      {this.imageUrl,
      this.nom,
      this.dateNaissance,
      this.sexe,
      this.description,
      this.couleur,
      this.sos,
      this.frais,
      this.libelleEspece,
      this.refugeanimal,
      this.favoris,
      this.taille,
      this.race,
      this.reference})
      : super._();

  @override
  AnimalRecord rebuild(void Function(AnimalRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnimalRecordBuilder toBuilder() => new AnimalRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnimalRecord &&
        imageUrl == other.imageUrl &&
        nom == other.nom &&
        dateNaissance == other.dateNaissance &&
        sexe == other.sexe &&
        description == other.description &&
        couleur == other.couleur &&
        sos == other.sos &&
        frais == other.frais &&
        libelleEspece == other.libelleEspece &&
        refugeanimal == other.refugeanimal &&
        favoris == other.favoris &&
        taille == other.taille &&
        race == other.race &&
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
                                                        $jc(0,
                                                            imageUrl.hashCode),
                                                        nom.hashCode),
                                                    dateNaissance.hashCode),
                                                sexe.hashCode),
                                            description.hashCode),
                                        couleur.hashCode),
                                    sos.hashCode),
                                frais.hashCode),
                            libelleEspece.hashCode),
                        refugeanimal.hashCode),
                    favoris.hashCode),
                taille.hashCode),
            race.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AnimalRecord')
          ..add('imageUrl', imageUrl)
          ..add('nom', nom)
          ..add('dateNaissance', dateNaissance)
          ..add('sexe', sexe)
          ..add('description', description)
          ..add('couleur', couleur)
          ..add('sos', sos)
          ..add('frais', frais)
          ..add('libelleEspece', libelleEspece)
          ..add('refugeanimal', refugeanimal)
          ..add('favoris', favoris)
          ..add('taille', taille)
          ..add('race', race)
          ..add('reference', reference))
        .toString();
  }
}

class AnimalRecordBuilder
    implements Builder<AnimalRecord, AnimalRecordBuilder> {
  _$AnimalRecord _$v;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _nom;
  String get nom => _$this._nom;
  set nom(String nom) => _$this._nom = nom;

  DateTime _dateNaissance;
  DateTime get dateNaissance => _$this._dateNaissance;
  set dateNaissance(DateTime dateNaissance) =>
      _$this._dateNaissance = dateNaissance;

  String _sexe;
  String get sexe => _$this._sexe;
  set sexe(String sexe) => _$this._sexe = sexe;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _couleur;
  String get couleur => _$this._couleur;
  set couleur(String couleur) => _$this._couleur = couleur;

  bool _sos;
  bool get sos => _$this._sos;
  set sos(bool sos) => _$this._sos = sos;

  int _frais;
  int get frais => _$this._frais;
  set frais(int frais) => _$this._frais = frais;

  String _libelleEspece;
  String get libelleEspece => _$this._libelleEspece;
  set libelleEspece(String libelleEspece) =>
      _$this._libelleEspece = libelleEspece;

  DocumentReference<Object> _refugeanimal;
  DocumentReference<Object> get refugeanimal => _$this._refugeanimal;
  set refugeanimal(DocumentReference<Object> refugeanimal) =>
      _$this._refugeanimal = refugeanimal;

  bool _favoris;
  bool get favoris => _$this._favoris;
  set favoris(bool favoris) => _$this._favoris = favoris;

  int _taille;
  int get taille => _$this._taille;
  set taille(int taille) => _$this._taille = taille;

  DocumentReference<Object> _race;
  DocumentReference<Object> get race => _$this._race;
  set race(DocumentReference<Object> race) => _$this._race = race;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AnimalRecordBuilder() {
    AnimalRecord._initializeBuilder(this);
  }

  AnimalRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageUrl = $v.imageUrl;
      _nom = $v.nom;
      _dateNaissance = $v.dateNaissance;
      _sexe = $v.sexe;
      _description = $v.description;
      _couleur = $v.couleur;
      _sos = $v.sos;
      _frais = $v.frais;
      _libelleEspece = $v.libelleEspece;
      _refugeanimal = $v.refugeanimal;
      _favoris = $v.favoris;
      _taille = $v.taille;
      _race = $v.race;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnimalRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnimalRecord;
  }

  @override
  void update(void Function(AnimalRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AnimalRecord build() {
    final _$result = _$v ??
        new _$AnimalRecord._(
            imageUrl: imageUrl,
            nom: nom,
            dateNaissance: dateNaissance,
            sexe: sexe,
            description: description,
            couleur: couleur,
            sos: sos,
            frais: frais,
            libelleEspece: libelleEspece,
            refugeanimal: refugeanimal,
            favoris: favoris,
            taille: taille,
            race: race,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
