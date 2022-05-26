import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'horaire_record.g.dart';

abstract class HoraireRecord
    implements Built<HoraireRecord, HoraireRecordBuilder> {
  static Serializer<HoraireRecord> get serializer => _$horaireRecordSerializer;

  @nullable
  DateTime get heureFin;

  @nullable
  DateTime get heureDebut;

  @nullable
  DocumentReference get refuge;

  @nullable
  DocumentReference get jour;

  @nullable
  DocumentReference get plage;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(HoraireRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('horaire');

  static Stream<HoraireRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<HoraireRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  HoraireRecord._();
  factory HoraireRecord([void Function(HoraireRecordBuilder) updates]) =
      _$HoraireRecord;

  static HoraireRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createHoraireRecordData({
  DateTime heureFin,
  DateTime heureDebut,
  DocumentReference refuge,
  DocumentReference jour,
  DocumentReference plage,
}) =>
    serializers.toFirestore(
        HoraireRecord.serializer,
        HoraireRecord((h) => h
          ..heureFin = heureFin
          ..heureDebut = heureDebut
          ..refuge = refuge
          ..jour = jour
          ..plage = plage));
