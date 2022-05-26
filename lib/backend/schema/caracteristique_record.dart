import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'caracteristique_record.g.dart';

abstract class CaracteristiqueRecord
    implements Built<CaracteristiqueRecord, CaracteristiqueRecordBuilder> {
  static Serializer<CaracteristiqueRecord> get serializer =>
      _$caracteristiqueRecordSerializer;

  @nullable
  String get libelle;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CaracteristiqueRecordBuilder builder) =>
      builder..libelle = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('caracteristique');

  static Stream<CaracteristiqueRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CaracteristiqueRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  CaracteristiqueRecord._();
  factory CaracteristiqueRecord(
          [void Function(CaracteristiqueRecordBuilder) updates]) =
      _$CaracteristiqueRecord;

  static CaracteristiqueRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCaracteristiqueRecordData({
  String libelle,
}) =>
    serializers.toFirestore(CaracteristiqueRecord.serializer,
        CaracteristiqueRecord((c) => c..libelle = libelle));
