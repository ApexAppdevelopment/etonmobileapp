// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plans_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlansStruct> _$plansStructSerializer = new _$PlansStructSerializer();

class _$PlansStructSerializer implements StructuredSerializer<PlansStruct> {
  @override
  final Iterable<Type> types = const [PlansStruct, _$PlansStruct];
  @override
  final String wireName = 'PlansStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, PlansStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.owner;
    if (value != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.projectName;
    if (value != null) {
      result
        ..add('project_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numberTask;
    if (value != null) {
      result
        ..add('number_task')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.completedTask;
    if (value != null) {
      result
        ..add('completed_task')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.lastEdited;
    if (value != null) {
      result
        ..add('last_edited')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.timeCreated;
    if (value != null) {
      result
        ..add('time_created')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  PlansStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlansStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'owner':
          result.owner = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'project_name':
          result.projectName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number_task':
          result.numberTask = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'completed_task':
          result.completedTask = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'last_edited':
          result.lastEdited = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'time_created':
          result.timeCreated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$PlansStruct extends PlansStruct {
  @override
  final DocumentReference<Object?>? owner;
  @override
  final String? projectName;
  @override
  final String? description;
  @override
  final int? numberTask;
  @override
  final int? completedTask;
  @override
  final DateTime? lastEdited;
  @override
  final DateTime? timeCreated;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$PlansStruct([void Function(PlansStructBuilder)? updates]) =>
      (new PlansStructBuilder()..update(updates))._build();

  _$PlansStruct._(
      {this.owner,
      this.projectName,
      this.description,
      this.numberTask,
      this.completedTask,
      this.lastEdited,
      this.timeCreated,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'PlansStruct', 'firestoreUtilData');
  }

  @override
  PlansStruct rebuild(void Function(PlansStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlansStructBuilder toBuilder() => new PlansStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlansStruct &&
        owner == other.owner &&
        projectName == other.projectName &&
        description == other.description &&
        numberTask == other.numberTask &&
        completedTask == other.completedTask &&
        lastEdited == other.lastEdited &&
        timeCreated == other.timeCreated &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, owner.hashCode), projectName.hashCode),
                            description.hashCode),
                        numberTask.hashCode),
                    completedTask.hashCode),
                lastEdited.hashCode),
            timeCreated.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlansStruct')
          ..add('owner', owner)
          ..add('projectName', projectName)
          ..add('description', description)
          ..add('numberTask', numberTask)
          ..add('completedTask', completedTask)
          ..add('lastEdited', lastEdited)
          ..add('timeCreated', timeCreated)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class PlansStructBuilder implements Builder<PlansStruct, PlansStructBuilder> {
  _$PlansStruct? _$v;

  DocumentReference<Object?>? _owner;
  DocumentReference<Object?>? get owner => _$this._owner;
  set owner(DocumentReference<Object?>? owner) => _$this._owner = owner;

  String? _projectName;
  String? get projectName => _$this._projectName;
  set projectName(String? projectName) => _$this._projectName = projectName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _numberTask;
  int? get numberTask => _$this._numberTask;
  set numberTask(int? numberTask) => _$this._numberTask = numberTask;

  int? _completedTask;
  int? get completedTask => _$this._completedTask;
  set completedTask(int? completedTask) =>
      _$this._completedTask = completedTask;

  DateTime? _lastEdited;
  DateTime? get lastEdited => _$this._lastEdited;
  set lastEdited(DateTime? lastEdited) => _$this._lastEdited = lastEdited;

  DateTime? _timeCreated;
  DateTime? get timeCreated => _$this._timeCreated;
  set timeCreated(DateTime? timeCreated) => _$this._timeCreated = timeCreated;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  PlansStructBuilder() {
    PlansStruct._initializeBuilder(this);
  }

  PlansStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owner = $v.owner;
      _projectName = $v.projectName;
      _description = $v.description;
      _numberTask = $v.numberTask;
      _completedTask = $v.completedTask;
      _lastEdited = $v.lastEdited;
      _timeCreated = $v.timeCreated;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlansStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlansStruct;
  }

  @override
  void update(void Function(PlansStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlansStruct build() => _build();

  _$PlansStruct _build() {
    final _$result = _$v ??
        new _$PlansStruct._(
            owner: owner,
            projectName: projectName,
            description: description,
            numberTask: numberTask,
            completedTask: completedTask,
            lastEdited: lastEdited,
            timeCreated: timeCreated,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'PlansStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
