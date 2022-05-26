import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'caracteristique_race_record.g.dart';

abstract class CaracteristiqueRaceRecord
    implements
        Built<CaracteristiqueRaceRecord, CaracteristiqueRaceRecordBuilder> {
  static Serializer<CaracteristiqueRaceRecord> get serializer =>
      _$caracteristiqueRaceRecordSerializer;

  @nullable
  String get valeur;

  @nullable
  DocumentReference get caracteristique;

  @nullable
  DocumentReference get race;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CaracteristiqueRaceRecordBuilder builder) =>
      builder..valeur = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('caracteristiqueRace');

  static Stream<CaracteristiqueRaceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CaracteristiqueRaceRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  CaracteristiqueRaceRecord._();
  factory CaracteristiqueRaceRecord(
          [void Function(CaracteristiqueRaceRecordBuilder) updates]) =
      _$CaracteristiqueRaceRecord;

  static CaracteristiqueRaceRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCaracteristiqueRaceRecordData({
  String valeur,
  DocumentReference caracteristique,
  DocumentReference race,
}) =>
    serializers.toFirestore(
        CaracteristiqueRaceRecord.serializer,
        CaracteristiqueRaceRecord((c) => c
          ..valeur = valeur
          ..caracteristique = caracteristique
          ..race = race));
