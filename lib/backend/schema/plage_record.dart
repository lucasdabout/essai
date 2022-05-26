import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'plage_record.g.dart';

abstract class PlageRecord implements Built<PlageRecord, PlageRecordBuilder> {
  static Serializer<PlageRecord> get serializer => _$plageRecordSerializer;

  @nullable
  String get plage;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PlageRecordBuilder builder) =>
      builder..plage = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('plage');

  static Stream<PlageRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PlageRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PlageRecord._();
  factory PlageRecord([void Function(PlageRecordBuilder) updates]) =
      _$PlageRecord;

  static PlageRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPlageRecordData({
  String plage,
}) =>
    serializers.toFirestore(
        PlageRecord.serializer, PlageRecord((p) => p..plage = plage));
