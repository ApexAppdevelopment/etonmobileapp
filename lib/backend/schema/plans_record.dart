import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'plans_record.g.dart';

abstract class PlansRecord implements Built<PlansRecord, PlansRecordBuilder> {
  static Serializer<PlansRecord> get serializer => _$plansRecordSerializer;

  DocumentReference? get owner;

  @BuiltValueField(wireName: 'users_assigned')
  BuiltList<DocumentReference>? get usersAssigned;

  @BuiltValueField(wireName: 'project_name')
  String? get projectName;

  String? get description;

  @BuiltValueField(wireName: 'number_tasks')
  int? get numberTasks;

  @BuiltValueField(wireName: 'completed_tasks')
  int? get completedTasks;

  @BuiltValueField(wireName: 'last_edited')
  DateTime? get lastEdited;

  @BuiltValueField(wireName: 'time_created')
  DateTime? get timeCreated;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PlansRecordBuilder builder) => builder
    ..usersAssigned = ListBuilder()
    ..projectName = ''
    ..description = ''
    ..numberTasks = 0
    ..completedTasks = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Plans');

  static Stream<PlansRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PlansRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PlansRecord._();
  factory PlansRecord([void Function(PlansRecordBuilder) updates]) =
      _$PlansRecord;

  static PlansRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPlansRecordData({
  DocumentReference? owner,
  String? projectName,
  String? description,
  int? numberTasks,
  int? completedTasks,
  DateTime? lastEdited,
  DateTime? timeCreated,
}) {
  final firestoreData = serializers.toFirestore(
    PlansRecord.serializer,
    PlansRecord(
      (p) => p
        ..owner = owner
        ..usersAssigned = null
        ..projectName = projectName
        ..description = description
        ..numberTasks = numberTasks
        ..completedTasks = completedTasks
        ..lastEdited = lastEdited
        ..timeCreated = timeCreated,
    ),
  );

  return firestoreData;
}
