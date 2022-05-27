import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'refuge_record.g.dart';

abstract class RefugeRecord
    implements Built<RefugeRecord, RefugeRecordBuilder> {
  static Serializer<RefugeRecord> get serializer => _$refugeRecordSerializer;

  @nullable
  String get nom;

  @nullable
  String get localisation;

  @nullable
  String get numeroEtRue;

  @nullable
  String get codePostal;

  @nullable
  String get ville;

  @nullable
  String get tel;

  @nullable
  String get description;

  @nullable
  BuiltList<DocumentReference> get animals;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(RefugeRecordBuilder builder) => builder
    ..nom = ''
    ..localisation = ''
    ..numeroEtRue = ''
    ..codePostal = ''
    ..ville = ''
    ..tel = ''
    ..description = ''
    ..animals = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('refuge');

  static Stream<RefugeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<RefugeRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static RefugeRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      RefugeRecord(
        (c) => c
          ..nom = snapshot.data['nom']
          ..localisation = snapshot.data['localisation']
          ..numeroEtRue = snapshot.data['numeroEtRue']
          ..codePostal = snapshot.data['codePostal']
          ..ville = snapshot.data['ville']
          ..tel = snapshot.data['tel']
          ..description = snapshot.data['description']
          ..animals = safeGet(
              () => ListBuilder(snapshot.data['animals'].map((s) => toRef(s))))
          ..reference = RefugeRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<RefugeRecord>> search(
          {String term,
          FutureOr<LatLng> location,
          int maxResults,
          double searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'refuge',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  RefugeRecord._();
  factory RefugeRecord([void Function(RefugeRecordBuilder) updates]) =
      _$RefugeRecord;

  static RefugeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createRefugeRecordData({
  String nom,
  String localisation,
  String numeroEtRue,
  String codePostal,
  String ville,
  String tel,
  String description,
}) =>
    serializers.toFirestore(
        RefugeRecord.serializer,
        RefugeRecord((r) => r
          ..nom = nom
          ..localisation = localisation
          ..numeroEtRue = numeroEtRue
          ..codePostal = codePostal
          ..ville = ville
          ..tel = tel
          ..description = description
          ..animals = null));
