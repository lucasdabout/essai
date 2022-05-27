import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'espece2_record.g.dart';

abstract class Espece2Record
    implements Built<Espece2Record, Espece2RecordBuilder> {
  static Serializer<Espece2Record> get serializer => _$espece2RecordSerializer;

  @nullable
  String get libelle;

  @nullable
  int get frais;

  @nullable
  BuiltList<DocumentReference> get animals;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(Espece2RecordBuilder builder) => builder
    ..libelle = ''
    ..frais = 0
    ..animals = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('espece2');

  static Stream<Espece2Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<Espece2Record> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  Espece2Record._();
  factory Espece2Record([void Function(Espece2RecordBuilder) updates]) =
      _$Espece2Record;

  static Espece2Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createEspece2RecordData({
  String libelle,
  int frais,
}) =>
    serializers.toFirestore(
        Espece2Record.serializer,
        Espece2Record((e) => e
          ..libelle = libelle
          ..frais = frais
          ..animals = null));
