// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'workout_session_history.dart';

class WorkoutSessionHistoryMapper
    extends ClassMapperBase<WorkoutSessionHistory> {
  WorkoutSessionHistoryMapper._();

  static WorkoutSessionHistoryMapper? _instance;
  static WorkoutSessionHistoryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WorkoutSessionHistoryMapper._());
      WorkoutSessionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'WorkoutSessionHistory';

  static List<WorkoutSession> _$workouts(WorkoutSessionHistory v) => v.workouts;
  static const Field<WorkoutSessionHistory, List<WorkoutSession>> _f$workouts =
      Field('workouts', _$workouts);

  @override
  final MappableFields<WorkoutSessionHistory> fields = const {
    #workouts: _f$workouts,
  };

  static WorkoutSessionHistory _instantiate(DecodingData data) {
    return WorkoutSessionHistory(workouts: data.dec(_f$workouts));
  }

  @override
  final Function instantiate = _instantiate;

  static WorkoutSessionHistory fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<WorkoutSessionHistory>(map);
  }

  static WorkoutSessionHistory fromJson(String json) {
    return ensureInitialized().decodeJson<WorkoutSessionHistory>(json);
  }
}

mixin WorkoutSessionHistoryMappable {
  String toJson() {
    return WorkoutSessionHistoryMapper.ensureInitialized()
        .encodeJson<WorkoutSessionHistory>(this as WorkoutSessionHistory);
  }

  Map<String, dynamic> toMap() {
    return WorkoutSessionHistoryMapper.ensureInitialized()
        .encodeMap<WorkoutSessionHistory>(this as WorkoutSessionHistory);
  }

  WorkoutSessionHistoryCopyWith<
    WorkoutSessionHistory,
    WorkoutSessionHistory,
    WorkoutSessionHistory
  >
  get copyWith =>
      _WorkoutSessionHistoryCopyWithImpl<
        WorkoutSessionHistory,
        WorkoutSessionHistory
      >(this as WorkoutSessionHistory, $identity, $identity);
  @override
  String toString() {
    return WorkoutSessionHistoryMapper.ensureInitialized().stringifyValue(
      this as WorkoutSessionHistory,
    );
  }

  @override
  bool operator ==(Object other) {
    return WorkoutSessionHistoryMapper.ensureInitialized().equalsValue(
      this as WorkoutSessionHistory,
      other,
    );
  }

  @override
  int get hashCode {
    return WorkoutSessionHistoryMapper.ensureInitialized().hashValue(
      this as WorkoutSessionHistory,
    );
  }
}

extension WorkoutSessionHistoryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WorkoutSessionHistory, $Out> {
  WorkoutSessionHistoryCopyWith<$R, WorkoutSessionHistory, $Out>
  get $asWorkoutSessionHistory => $base.as(
    (v, t, t2) => _WorkoutSessionHistoryCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class WorkoutSessionHistoryCopyWith<
  $R,
  $In extends WorkoutSessionHistory,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    WorkoutSession,
    WorkoutSessionCopyWith<$R, WorkoutSession, WorkoutSession>
  >
  get workouts;
  $R call({List<WorkoutSession>? workouts});
  WorkoutSessionHistoryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _WorkoutSessionHistoryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WorkoutSessionHistory, $Out>
    implements WorkoutSessionHistoryCopyWith<$R, WorkoutSessionHistory, $Out> {
  _WorkoutSessionHistoryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WorkoutSessionHistory> $mapper =
      WorkoutSessionHistoryMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    WorkoutSession,
    WorkoutSessionCopyWith<$R, WorkoutSession, WorkoutSession>
  >
  get workouts => ListCopyWith(
    $value.workouts,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(workouts: v),
  );
  @override
  $R call({List<WorkoutSession>? workouts}) =>
      $apply(FieldCopyWithData({if (workouts != null) #workouts: workouts}));
  @override
  WorkoutSessionHistory $make(CopyWithData data) =>
      WorkoutSessionHistory(workouts: data.get(#workouts, or: $value.workouts));

  @override
  WorkoutSessionHistoryCopyWith<$R2, WorkoutSessionHistory, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _WorkoutSessionHistoryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

