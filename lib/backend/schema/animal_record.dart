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
  DocumentReference get refuge;

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
  bool get adopte;

  @nullable
  int get frais;

  @nullable
  DocumentReference get race;

  @nullable
  DocumentReference get espece;

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
    ..adopte = false
    ..frais = 0;

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
  DocumentReference refuge,
  String nom,
  DateTime dateNaissance,
  String sexe,
  String description,
  String couleur,
  bool sos,
  bool adopte,
  int frais,
  DocumentReference race,
  DocumentReference espece,
}) =>
    serializers.toFirestore(
        AnimalRecord.serializer,
        AnimalRecord((a) => a
          ..imageUrl = imageUrl
          ..refuge = refuge
          ..nom = nom
          ..dateNaissance = dateNaissance
          ..sexe = sexe
          ..description = description
          ..couleur = couleur
          ..sos = sos
          ..adopte = adopte
          ..frais = frais
          ..race = race
          ..espece = espece));
