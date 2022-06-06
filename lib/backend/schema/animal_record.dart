import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'animal_record.g.dart';

abstract class AnimalRecord
    implements Built<AnimalRecord, AnimalRecordBuilder> {
  static Serializer<AnimalRecord> get serializer => _$animalRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @nullable
  String get nom;

  @nullable
  DateTime get dateNaissance;

  @nullable
  String get sexe;

  @nullable
  String get description;

  @nullable
  String get couleur;

  @nullable
  bool get sos;

  @nullable
  int get frais;

  @nullable
  String get libelleEspece;

  @nullable
  DocumentReference get refugeanimal;

  @nullable
  bool get favoris;

  @nullable
  int get taille;

  @nullable
  DocumentReference get race;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AnimalRecordBuilder builder) => builder
    ..imageUrl = ''
    ..nom = ''
    ..sexe = ''
    ..description = ''
    ..couleur = ''
    ..sos = false
    ..frais = 0
    ..libelleEspece = ''
    ..favoris = false
    ..taille = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('animal');

  static Stream<AnimalRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AnimalRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AnimalRecord._();
  factory AnimalRecord([void Function(AnimalRecordBuilder) updates]) =
      _$AnimalRecord;

  static AnimalRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAnimalRecordData({
  String imageUrl,
  String nom,
  DateTime dateNaissance,
  String sexe,
  String description,
  String couleur,
  bool sos,
  int frais,
  String libelleEspece,
  DocumentReference refugeanimal,
  bool favoris,
  int taille,
  DocumentReference race,
}) =>
    serializers.toFirestore(
        AnimalRecord.serializer,
        AnimalRecord((a) => a
          ..imageUrl = imageUrl
          ..nom = nom
          ..dateNaissance = dateNaissance
          ..sexe = sexe
          ..description = description
          ..couleur = couleur
          ..sos = sos
          ..frais = frais
          ..libelleEspece = libelleEspece
          ..refugeanimal = refugeanimal
          ..favoris = favoris
          ..taille = taille
          ..race = race));
