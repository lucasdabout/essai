import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'jour_semaine_record.g.dart';

abstract class JourSemaineRecord
    implements Built<JourSemaineRecord, JourSemaineRecordBuilder> {
  static Serializer<JourSemaineRecord> get serializer =>
      _$jourSemaineRecordSerializer;

  @nullable
  String get libelle;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(JourSemaineRecordBuilder builder) =>
      builder..libelle = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('jourSemaine');

  static Stream<JourSemaineRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<JourSemaineRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  JourSemaineRecord._();
  factory JourSemaineRecord([void Function(JourSemaineRecordBuilder) updates]) =
      _$JourSemaineRecord;

  static JourSemaineRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createJourSemaineRecordData({
  String libelle,
}) =>
    serializers.toFirestore(JourSemaineRecord.serializer,
        JourSemaineRecord((j) => j..libelle = libelle));
