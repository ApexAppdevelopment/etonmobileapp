import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'webinarattendies_record.g.dart';

abstract class WebinarattendiesRecord
    implements Built<WebinarattendiesRecord, WebinarattendiesRecordBuilder> {
  static Serializer<WebinarattendiesRecord> get serializer =>
      _$webinarattendiesRecordSerializer;

  DocumentReference? get attendies;

  DateTime? get time;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(WebinarattendiesRecordBuilder builder) =>
      builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('webinarattendies');

  static Stream<WebinarattendiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<WebinarattendiesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  WebinarattendiesRecord._();
  factory WebinarattendiesRecord(
          [void Function(WebinarattendiesRecordBuilder) updates]) =
      _$WebinarattendiesRecord;

  static WebinarattendiesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createWebinarattendiesRecordData({
  DocumentReference? attendies,
  DateTime? time,
}) {
  final firestoreData = serializers.toFirestore(
    WebinarattendiesRecord.serializer,
    WebinarattendiesRecord(
      (w) => w
        ..attendies = attendies
        ..time = time,
    ),
  );

  return firestoreData;
}
