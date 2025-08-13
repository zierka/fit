// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'workout_week.dart';

class WorkoutWeekMapper extends ClassMapperBase<WorkoutWeek> {
  WorkoutWeekMapper._();

  static WorkoutWeekMapper? _instance;
  static WorkoutWeekMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WorkoutWeekMapper._());
      WorkoutDayMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'WorkoutWeek';

  static int _$weekNumber(WorkoutWeek v) => v.weekNumber;
  static const Field<WorkoutWeek, int> _f$weekNumber = Field(
    'weekNumber',
    _$weekNumber,
  );
  static List<WorkoutDay> _$days(WorkoutWeek v) => v.days;
  static const Field<WorkoutWeek, List<WorkoutDay>> _f$days = Field(
    'days',
    _$days,
  );

  @override
  final MappableFields<WorkoutWeek> fields = const {
    #weekNumber: _f$weekNumber,
    #days: _f$days,
  };

  static WorkoutWeek _instantiate(DecodingData data) {
    return WorkoutWeek(
      weekNumber: data.dec(_f$weekNumber),
      days: data.dec(_f$days),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static WorkoutWeek fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<WorkoutWeek>(map);
  }

  static WorkoutWeek fromJson(String json) {
    return ensureInitialized().decodeJson<WorkoutWeek>(json);
  }
}

mixin WorkoutWeekMappable {
  String toJson() {
    return WorkoutWeekMapper.ensureInitialized().encodeJson<WorkoutWeek>(
      this as WorkoutWeek,
    );
  }

  Map<String, dynamic> toMap() {
    return WorkoutWeekMapper.ensureInitialized().encodeMap<WorkoutWeek>(
      this as WorkoutWeek,
    );
  }

  WorkoutWeekCopyWith<WorkoutWeek, WorkoutWeek, WorkoutWeek> get copyWith =>
      _WorkoutWeekCopyWithImpl<WorkoutWeek, WorkoutWeek>(
        this as WorkoutWeek,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return WorkoutWeekMapper.ensureInitialized().stringifyValue(
      this as WorkoutWeek,
    );
  }

  @override
  bool operator ==(Object other) {
    return WorkoutWeekMapper.ensureInitialized().equalsValue(
      this as WorkoutWeek,
      other,
    );
  }

  @override
  int get hashCode {
    return WorkoutWeekMapper.ensureInitialized().hashValue(this as WorkoutWeek);
  }
}

extension WorkoutWeekValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WorkoutWeek, $Out> {
  WorkoutWeekCopyWith<$R, WorkoutWeek, $Out> get $asWorkoutWeek =>
      $base.as((v, t, t2) => _WorkoutWeekCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class WorkoutWeekCopyWith<$R, $In extends WorkoutWeek, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, WorkoutDay, WorkoutDayCopyWith<$R, WorkoutDay, WorkoutDay>>
  get days;
  $R call({int? weekNumber, List<WorkoutDay>? days});
  WorkoutWeekCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _WorkoutWeekCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WorkoutWeek, $Out>
    implements WorkoutWeekCopyWith<$R, WorkoutWeek, $Out> {
  _WorkoutWeekCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WorkoutWeek> $mapper =
      WorkoutWeekMapper.ensureInitialized();
  @override
  ListCopyWith<$R, WorkoutDay, WorkoutDayCopyWith<$R, WorkoutDay, WorkoutDay>>
  get days => ListCopyWith(
    $value.days,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(days: v),
  );
  @override
  $R call({int? weekNumber, List<WorkoutDay>? days}) => $apply(
    FieldCopyWithData({
      if (weekNumber != null) #weekNumber: weekNumber,
      if (days != null) #days: days,
    }),
  );
  @override
  WorkoutWeek $make(CopyWithData data) => WorkoutWeek(
    weekNumber: data.get(#weekNumber, or: $value.weekNumber),
    days: data.get(#days, or: $value.days),
  );

  @override
  WorkoutWeekCopyWith<$R2, WorkoutWeek, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _WorkoutWeekCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

