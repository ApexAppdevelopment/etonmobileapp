// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webinarattendies_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WebinarattendiesRecord> _$webinarattendiesRecordSerializer =
    new _$WebinarattendiesRecordSerializer();

class _$WebinarattendiesRecordSerializer
    implements StructuredSerializer<WebinarattendiesRecord> {
  @override
  final Iterable<Type> types = const [
    WebinarattendiesRecord,
    _$WebinarattendiesRecord
  ];
  @override
  final String wireName = 'WebinarattendiesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WebinarattendiesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.attendies;
    if (value != null) {
      result
        ..add('attendies')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  WebinarattendiesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WebinarattendiesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'attendies':
          result.attendies = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$WebinarattendiesRecord extends WebinarattendiesRecord {
  @override
  final DocumentReference<Object?>? attendies;
  @override
  final DateTime? time;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$WebinarattendiesRecord(
          [void Function(WebinarattendiesRecordBuilder)? updates]) =>
      (new WebinarattendiesRecordBuilder()..update(updates))._build();

  _$WebinarattendiesRecord._({this.attendies, this.time, this.ffRef})
      : super._();

  @override
  WebinarattendiesRecord rebuild(
          void Function(WebinarattendiesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebinarattendiesRecordBuilder toBuilder() =>
      new WebinarattendiesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebinarattendiesRecord &&
        attendies == other.attendies &&
        time == other.time &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, attendies.hashCode), time.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WebinarattendiesRecord')
          ..add('attendies', attendies)
          ..add('time', time)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class WebinarattendiesRecordBuilder
    implements Builder<WebinarattendiesRecord, WebinarattendiesRecordBuilder> {
  _$WebinarattendiesRecord? _$v;

  DocumentReference<Object?>? _attendies;
  DocumentReference<Object?>? get attendies => _$this._attendies;
  set attendies(DocumentReference<Object?>? attendies) =>
      _$this._attendies = attendies;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  WebinarattendiesRecordBuilder() {
    WebinarattendiesRecord._initializeBuilder(this);
  }

  WebinarattendiesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attendies = $v.attendies;
      _time = $v.time;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebinarattendiesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WebinarattendiesRecord;
  }

  @override
  void update(void Function(WebinarattendiesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebinarattendiesRecord build() => _build();

  _$WebinarattendiesRecord _build() {
    final _$result = _$v ??
        new _$WebinarattendiesRecord._(
            attendies: attendies, time: time, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
