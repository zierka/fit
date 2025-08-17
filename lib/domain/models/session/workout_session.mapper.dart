// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'workout_session.dart';

class WorkoutSessionMapper extends ClassMapperBase<WorkoutSession> {
  WorkoutSessionMapper._();

  static WorkoutSessionMapper? _instance;
  static WorkoutSessionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WorkoutSessionMapper._());
      WorkoutDayMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'WorkoutSession';

  static DateTime _$date(WorkoutSession v) => v.date;
  static const Field<WorkoutSession, DateTime> _f$date = Field('date', _$date);
  static WorkoutDay _$day(WorkoutSession v) => v.day;
  static const Field<WorkoutSession, WorkoutDay> _f$day = Field('day', _$day);

  @override
  final MappableFields<WorkoutSession> fields = const {
    #date: _f$date,
    #day: _f$day,
  };

  static WorkoutSession _instantiate(DecodingData data) {
    return WorkoutSession(date: data.dec(_f$date), day: data.dec(_f$day));
  }

  @override
  final Function instantiate = _instantiate;

  static WorkoutSession fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<WorkoutSession>(map);
  }

  static WorkoutSession fromJson(String json) {
    return ensureInitialized().decodeJson<WorkoutSession>(json);
  }
}

mixin WorkoutSessionMappable {
  String toJson() {
    return WorkoutSessionMapper.ensureInitialized().encodeJson<WorkoutSession>(
      this as WorkoutSession,
    );
  }

  Map<String, dynamic> toMap() {
    return WorkoutSessionMapper.ensureInitialized().encodeMap<WorkoutSession>(
      this as WorkoutSession,
    );
  }

  WorkoutSessionCopyWith<WorkoutSession, WorkoutSession, WorkoutSession>
  get copyWith => _WorkoutSessionCopyWithImpl<WorkoutSession, WorkoutSession>(
    this as WorkoutSession,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return WorkoutSessionMapper.ensureInitialized().stringifyValue(
      this as WorkoutSession,
    );
  }

  @override
  bool operator ==(Object other) {
    return WorkoutSessionMapper.ensureInitialized().equalsValue(
      this as WorkoutSession,
      other,
    );
  }

  @override
  int get hashCode {
    return WorkoutSessionMapper.ensureInitialized().hashValue(
      this as WorkoutSession,
    );
  }
}

extension WorkoutSessionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WorkoutSession, $Out> {
  WorkoutSessionCopyWith<$R, WorkoutSession, $Out> get $asWorkoutSession =>
      $base.as((v, t, t2) => _WorkoutSessionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class WorkoutSessionCopyWith<$R, $In extends WorkoutSession, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  WorkoutDayCopyWith<$R, WorkoutDay, WorkoutDay> get day;
  $R call({DateTime? date, WorkoutDay? day});
  WorkoutSessionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _WorkoutSessionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WorkoutSession, $Out>
    implements WorkoutSessionCopyWith<$R, WorkoutSession, $Out> {
  _WorkoutSessionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WorkoutSession> $mapper =
      WorkoutSessionMapper.ensureInitialized();
  @override
  WorkoutDayCopyWith<$R, WorkoutDay, WorkoutDay> get day =>
      $value.day.copyWith.$chain((v) => call(day: v));
  @override
  $R call({DateTime? date, WorkoutDay? day}) => $apply(
    FieldCopyWithData({
      if (date != null) #date: date,
      if (day != null) #day: day,
    }),
  );
  @override
  WorkoutSession $make(CopyWithData data) => WorkoutSession(
    date: data.get(#date, or: $value.date),
    day: data.get(#day, or: $value.day),
  );

  @override
  WorkoutSessionCopyWith<$R2, WorkoutSession, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _WorkoutSessionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

