import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'plans_struct.g.dart';

abstract class PlansStruct implements Built<PlansStruct, PlansStructBuilder> {
  static Serializer<PlansStruct> get serializer => _$plansStructSerializer;

  DocumentReference? get owner;

  @BuiltValueField(wireName: 'project_name')
  String? get projectName;

  String? get description;

  @BuiltValueField(wireName: 'number_task')
  int? get numberTask;

  @BuiltValueField(wireName: 'completed_task')
  int? get completedTask;

  @BuiltValueField(wireName: 'last_edited')
  DateTime? get lastEdited;

  @BuiltValueField(wireName: 'time_created')
  DateTime? get timeCreated;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(PlansStructBuilder builder) => builder
    ..projectName = ''
    ..description = ''
    ..numberTask = 0
    ..completedTask = 0
    ..firestoreUtilData = FirestoreUtilData();

  PlansStruct._();
  factory PlansStruct([void Function(PlansStructBuilder) updates]) =
      _$PlansStruct;
}

PlansStruct createPlansStruct({
  DocumentReference? owner,
  String? projectName,
  String? description,
  int? numberTask,
  int? completedTask,
  DateTime? lastEdited,
  DateTime? timeCreated,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PlansStruct(
      (p) => p
        ..owner = owner
        ..projectName = projectName
        ..description = description
        ..numberTask = numberTask
        ..completedTask = completedTask
        ..lastEdited = lastEdited
        ..timeCreated = timeCreated
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

PlansStruct? updatePlansStruct(
  PlansStruct? plans, {
  bool clearUnsetFields = true,
}) =>
    plans != null
        ? (plans.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addPlansStructData(
  Map<String, dynamic> firestoreData,
  PlansStruct? plans,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (plans == null) {
    return;
  }
  if (plans.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && plans.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final plansData = getPlansFirestoreData(plans, forFieldValue);
  final nestedData = plansData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = plans.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getPlansFirestoreData(
  PlansStruct? plans, [
  bool forFieldValue = false,
]) {
  if (plans == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(PlansStruct.serializer, plans);

  // Add any Firestore field values
  plans.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPlansListFirestoreData(
  List<PlansStruct>? planss,
) =>
    planss?.map((p) => getPlansFirestoreData(p, true)).toList() ?? [];
