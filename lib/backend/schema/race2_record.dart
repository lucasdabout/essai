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
  String get prerequis;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(Race2RecordBuilder builder) => builder
    ..libelle = ''
    ..descriptif = ''
    ..prerequis = '';

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
  String prerequis,
}) =>
    serializers.toFirestore(
        Race2Record.serializer,
        Race2Record((r) => r
          ..libelle = libelle
          ..descriptif = descriptif
          ..prerequis = prerequis));
