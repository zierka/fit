// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'workout_day.dart';

class WorkoutDayMapper extends ClassMapperBase<WorkoutDay> {
  WorkoutDayMapper._();

  static WorkoutDayMapper? _instance;
  static WorkoutDayMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WorkoutDayMapper._());
      ExerciseMapper.ensureInitialized();
      WorkoutSetMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'WorkoutDay';

  static int _$dayNumber(WorkoutDay v) => v.dayNumber;
  static const Field<WorkoutDay, int> _f$dayNumber = Field(
    'dayNumber',
    _$dayNumber,
  );
  static Map<Exercise, WorkoutSet> _$exercises(WorkoutDay v) => v.exercises;
  static const Field<WorkoutDay, Map<Exercise, WorkoutSet>> _f$exercises =
      Field('exercises', _$exercises);

  @override
  final MappableFields<WorkoutDay> fields = const {
    #dayNumber: _f$dayNumber,
    #exercises: _f$exercises,
  };

  static WorkoutDay _instantiate(DecodingData data) {
    return WorkoutDay(
      dayNumber: data.dec(_f$dayNumber),
      exercises: data.dec(_f$exercises),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static WorkoutDay fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<WorkoutDay>(map);
  }

  static WorkoutDay fromJson(String json) {
    return ensureInitialized().decodeJson<WorkoutDay>(json);
  }
}

mixin WorkoutDayMappable {
  String toJson() {
    return WorkoutDayMapper.ensureInitialized().encodeJson<WorkoutDay>(
      this as WorkoutDay,
    );
  }

  Map<String, dynamic> toMap() {
    return WorkoutDayMapper.ensureInitialized().encodeMap<WorkoutDay>(
      this as WorkoutDay,
    );
  }

  WorkoutDayCopyWith<WorkoutDay, WorkoutDay, WorkoutDay> get copyWith =>
      _WorkoutDayCopyWithImpl<WorkoutDay, WorkoutDay>(
        this as WorkoutDay,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return WorkoutDayMapper.ensureInitialized().stringifyValue(
      this as WorkoutDay,
    );
  }

  @override
  bool operator ==(Object other) {
    return WorkoutDayMapper.ensureInitialized().equalsValue(
      this as WorkoutDay,
      other,
    );
  }

  @override
  int get hashCode {
    return WorkoutDayMapper.ensureInitialized().hashValue(this as WorkoutDay);
  }
}

extension WorkoutDayValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WorkoutDay, $Out> {
  WorkoutDayCopyWith<$R, WorkoutDay, $Out> get $asWorkoutDay =>
      $base.as((v, t, t2) => _WorkoutDayCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class WorkoutDayCopyWith<$R, $In extends WorkoutDay, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<
    $R,
    Exercise,
    WorkoutSet,
    WorkoutSetCopyWith<$R, WorkoutSet, WorkoutSet>
  >
  get exercises;
  $R call({int? dayNumber, Map<Exercise, WorkoutSet>? exercises});
  WorkoutDayCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _WorkoutDayCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WorkoutDay, $Out>
    implements WorkoutDayCopyWith<$R, WorkoutDay, $Out> {
  _WorkoutDayCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WorkoutDay> $mapper =
      WorkoutDayMapper.ensureInitialized();
  @override
  MapCopyWith<
    $R,
    Exercise,
    WorkoutSet,
    WorkoutSetCopyWith<$R, WorkoutSet, WorkoutSet>
  >
  get exercises => MapCopyWith(
    $value.exercises,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(exercises: v),
  );
  @override
  $R call({int? dayNumber, Map<Exercise, WorkoutSet>? exercises}) => $apply(
    FieldCopyWithData({
      if (dayNumber != null) #dayNumber: dayNumber,
      if (exercises != null) #exercises: exercises,
    }),
  );
  @override
  WorkoutDay $make(CopyWithData data) => WorkoutDay(
    dayNumber: data.get(#dayNumber, or: $value.dayNumber),
    exercises: data.get(#exercises, or: $value.exercises),
  );

  @override
  WorkoutDayCopyWith<$R2, WorkoutDay, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _WorkoutDayCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

