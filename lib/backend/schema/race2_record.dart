import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'race2_record.g.dart';

abstract class Race2Record implements Built<Race2Record, Race2RecordBuilder> {
  static Serializer<Race2Record> get serializer => _$race2RecordSerializer;

  @nullable
  String get libelle;

  @nullable
  String get descriptif;

  @nullable
  BuiltList<DocumentReference> get animaux;

  @nullable
  String get typePoil;

  @nullable
  String get origine;

  @nullable
  String get gabarit;

  @nullable
  String get formeTete;

  @nullable
  String get poidsFemelle;

  @nullable
  String get poidsMale;

  @nullable
  String get tailleFemelle;

  @nullable
  String get tailleMale;

  @nullable
  String get particularite;

  @nullable
  String get historiqueRace;

  @nullable
  String get comportement;

  @nullable
  String get imgRace;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(Race2RecordBuilder builder) => builder
    ..libelle = ''
    ..descriptif = ''
    ..animaux = ListBuilder()
    ..typePoil = ''
    ..origine = ''
    ..gabarit = ''
    ..formeTete = ''
    ..poidsFemelle = ''
    ..poidsMale = ''
    ..tailleFemelle = ''
    ..tailleMale = ''
    ..particularite = ''
    ..historiqueRace = ''
    ..comportement = ''
    ..imgRace = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('race2');

  static Stream<Race2Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<Race2Record> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  Race2Record._();
  factory Race2Record([void Function(Race2RecordBuilder) updates]) =
      _$Race2Record;

  static Race2Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createRace2RecordData({
  String libelle,
  String descriptif,
  String typePoil,
  String origine,
  String gabarit,
  String formeTete,
  String poidsFemelle,
  String poidsMale,
  String tailleFemelle,
  String tailleMale,
  String particularite,
  String historiqueRace,
  String comportement,
  String imgRace,
}) =>
    serializers.toFirestore(
        Race2Record.serializer,
        Race2Record((r) => r
          ..libelle = libelle
          ..descriptif = descriptif
          ..animaux = null
          ..typePoil = typePoil
          ..origine = origine
          ..gabarit = gabarit
          ..formeTete = formeTete
          ..poidsFemelle = poidsFemelle
          ..poidsMale = poidsMale
          ..tailleFemelle = tailleFemelle
          ..tailleMale = tailleMale
          ..particularite = particularite
          ..historiqueRace = historiqueRace
          ..comportement = comportement
          ..imgRace = imgRace));
