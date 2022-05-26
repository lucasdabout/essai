import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'caracteristique_espece_record.g.dart';

abstract class CaracteristiqueEspeceRecord
    implements
        Built<CaracteristiqueEspeceRecord, CaracteristiqueEspeceRecordBuilder> {
  static Serializer<CaracteristiqueEspeceRecord> get serializer =>
      _$caracteristiqueEspeceRecordSerializer;

  @nullable
  DocumentReference get caracteristique;

  @nullable
  DocumentReference get espece;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CaracteristiqueEspeceRecordBuilder builder) =>
      builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('caracteristiqueEspece');

  static Stream<CaracteristiqueEspeceRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CaracteristiqueEspeceRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  CaracteristiqueEspeceRecord._();
  factory CaracteristiqueEspeceRecord(
          [void Function(CaracteristiqueEspeceRecordBuilder) updates]) =
      _$CaracteristiqueEspeceRecord;

  static CaracteristiqueEspeceRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCaracteristiqueEspeceRecordData({
  DocumentReference caracteristique,
  DocumentReference espece,
}) =>
    serializers.toFirestore(
        CaracteristiqueEspeceRecord.serializer,
        CaracteristiqueEspeceRecord((c) => c
          ..caracteristique = caracteristique
          ..espece = espece));
