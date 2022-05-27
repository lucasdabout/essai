// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'horaire_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HoraireRecord> _$horaireRecordSerializer =
    new _$HoraireRecordSerializer();

class _$HoraireRecordSerializer implements StructuredSerializer<HoraireRecord> {
  @override
  final Iterable<Type> types = const [HoraireRecord, _$HoraireRecord];
  @override
  final String wireName = 'HoraireRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, HoraireRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.heureFin;
    if (value != null) {
      result
        ..add('heureFin')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.heureDebut;
    if (value != null) {
      result
        ..add('heureDebut')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.refuge;
    if (value != null) {
      result
        ..add('refuge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.jour;
    if (value != null) {
      result
        ..add('jour')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.plage;
    if (value != null) {
      result
        ..add('plage')
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
  HoraireRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HoraireRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'heureFin':
          result.heureFin = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'heureDebut':
          result.heureDebut = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'refuge':
          result.refuge = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'jour':
          result.jour = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'plage':
          result.plage = serializers.deserialize(value,
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

class _$HoraireRecord extends HoraireRecord {
  @override
  final DateTime heureFin;
  @override
  final DateTime heureDebut;
  @override
  final DocumentReference<Object> refuge;
  @override
  final DocumentReference<Object> jour;
  @override
  final DocumentReference<Object> plage;
  @override
  final DocumentReference<Object> reference;

  factory _$HoraireRecord([void Function(HoraireRecordBuilder) updates]) =>
      (new HoraireRecordBuilder()..update(updates))._build();

  _$HoraireRecord._(
      {this.heureFin,
      this.heureDebut,
      this.refuge,
      this.jour,
      this.plage,
      this.reference})
      : super._();

  @override
  HoraireRecord rebuild(void Function(HoraireRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HoraireRecordBuilder toBuilder() => new HoraireRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HoraireRecord &&
        heureFin == other.heureFin &&
        heureDebut == other.heureDebut &&
        refuge == other.refuge &&
        jour == other.jour &&
        plage == other.plage &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, heureFin.hashCode), heureDebut.hashCode),
                    refuge.hashCode),
                jour.hashCode),
            plage.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HoraireRecord')
          ..add('heureFin', heureFin)
          ..add('heureDebut', heureDebut)
          ..add('refuge', refuge)
          ..add('jour', jour)
          ..add('plage', plage)
          ..add('reference', reference))
        .toString();
  }
}

class HoraireRecordBuilder
    implements Builder<HoraireRecord, HoraireRecordBuilder> {
  _$HoraireRecord _$v;

  DateTime _heureFin;
  DateTime get heureFin => _$this._heureFin;
  set heureFin(DateTime heureFin) => _$this._heureFin = heureFin;

  DateTime _heureDebut;
  DateTime get heureDebut => _$this._heureDebut;
  set heureDebut(DateTime heureDebut) => _$this._heureDebut = heureDebut;

  DocumentReference<Object> _refuge;
  DocumentReference<Object> get refuge => _$this._refuge;
  set refuge(DocumentReference<Object> refuge) => _$this._refuge = refuge;

  DocumentReference<Object> _jour;
  DocumentReference<Object> get jour => _$this._jour;
  set jour(DocumentReference<Object> jour) => _$this._jour = jour;

  DocumentReference<Object> _plage;
  DocumentReference<Object> get plage => _$this._plage;
  set plage(DocumentReference<Object> plage) => _$this._plage = plage;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  HoraireRecordBuilder() {
    HoraireRecord._initializeBuilder(this);
  }

  HoraireRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _heureFin = $v.heureFin;
      _heureDebut = $v.heureDebut;
      _refuge = $v.refuge;
      _jour = $v.jour;
      _plage = $v.plage;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HoraireRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HoraireRecord;
  }

  @override
  void update(void Function(HoraireRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  HoraireRecord build() => _build();

  _$HoraireRecord _build() {
    final _$result = _$v ??
        new _$HoraireRecord._(
            heureFin: heureFin,
            heureDebut: heureDebut,
            refuge: refuge,
            jour: jour,
            plage: plage,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
