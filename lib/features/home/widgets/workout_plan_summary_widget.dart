import 'package:collection/collection.dart';
import 'package:fit/features/home/widgets/rep_count.dart';
import 'package:fit/presentation/presentation.dart';
import 'package:flutter/material.dart';

import '../../../domain/models/models.dart';

class WorkoutPlanSummaryWidget extends StatefulWidget {
  const WorkoutPlanSummaryWidget({
    super.key,
    required this.plan,
    required this.history,
  });

  final WorkoutPlan plan;
  final WorkoutSessionHistory history;

  @override
  State<WorkoutPlanSummaryWidget> createState() =>
      _WorkoutPlanSummaryWidgetState();
}

class _WorkoutPlanSummaryWidgetState extends State<WorkoutPlanSummaryWidget> {
  late final List<WorkoutExerciseProgress> progress;

  WorkoutDay get lastWorkoutDay =>
      widget.history.workouts.lastOrNull?.day ??
      widget.plan.weeksPlan.first.days.first;

  @override
  void initState() {
    super.initState();

    progress = _determineProgress();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Your workout progress'),
        spacer(Dim.x8),
        _summaryCard(context),
      ],
    );
  }

  Widget _summaryCard(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _workoutExercises(),
      ),
    );
  }

  Widget _workoutExercises() {
    return Table(
      columnWidths: {
        0: FlexColumnWidth(),
        1: FixedColumnWidth(50),
        2: FixedColumnWidth(60),
        3: FixedColumnWidth(50),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [_header(), _subHeader(), ...progress.map(_workoutExercise)],
    );
  }

  TableRow _header() {
    return TableRow(
      children: [
        Text('Reps in a set'),
        Text('Start', textAlign: TextAlign.center),
        Text('Current', textAlign: TextAlign.center),
        Text('Target', textAlign: TextAlign.center),
      ],
    );
  }

  TableRow _subHeader() {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: Dim.x8),
          child: Text('WEEK ->'),
        ),
        Text(
          widget.plan.weeksPlan.first.weekNumber.toString(),
          textAlign: TextAlign.center,
        ),
        Text(lastWorkoutDay.weekNumber.toString(), textAlign: TextAlign.center),
        Text(widget.plan.weeks.toString(), textAlign: TextAlign.center),
      ],
    );
  }

  TableRow _workoutExercise(WorkoutExerciseProgress progress) {
    return TableRow(
      children: [
        Text(progress.exercise.name),
        RepCount(reps: progress.startReps, type: RepCountType.start),
        RepCount(reps: progress.currentReps, type: RepCountType.current),
        RepCount(reps: progress.targetReps, type: RepCountType.target),
      ],
    );
  }

  List<WorkoutExerciseProgress> _determineProgress() {
    final workoutWeek = widget.plan.weeksPlan[lastWorkoutDay.weekNumber];

    final workoutDay = workoutWeek.days[lastWorkoutDay.dayNumber];

    final progress = workoutDay.exercises.map((set) {
      final exPlan = widget.plan.planForExercise(set.exercise);

      return WorkoutExerciseProgress(
        exercise: set.exercise,
        startReps: exPlan.startReps,
        currentReps:
            lastWorkoutDay.exercises
                .firstWhereOrNull((set) => set.exercise == set.exercise)
                ?.totalReps ??
            0,
        targetReps: exPlan.targetReps,
      );
    });

    return progress.toList();
  }
}

class WorkoutExerciseProgress {
  final Exercise exercise;
  final int startReps;
  final int currentReps;
  final int targetReps;

  WorkoutExerciseProgress({
    required this.exercise,
    required this.startReps,
    required this.currentReps,
    required this.targetReps,
  });
}
