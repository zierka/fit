import 'package:flutter/material.dart';

import '../../domain/models/models.dart';

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
  late final Map<Exercise, WorkoutExerciseProgress> progress;

  @override
  void initState() {
    super.initState();

    progress = _determineProgress();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Your workout progress'),
          SizedBox(height: 12.0),
          _summaryCard(context),
        ],
      ),
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
      children: [
        _header(),
        _subHeader(),
        ...progress.values.map(_workoutExercise),
      ],
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
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text('WEEK ->'),
        ),
        Text('1', textAlign: TextAlign.center),
        Text(
          widget.history.workouts.last.weekNumber.toString(),
          textAlign: TextAlign.center,
        ),
        Text(widget.plan.weeks.toString(), textAlign: TextAlign.center),
      ],
    );
  }

  TableRow _workoutExercise(WorkoutExerciseProgress progress) {
    return TableRow(
      children: [
        Text(progress.exercise.name),
        _repCount(progress.startReps, Colors.blue[300]!),
        _repCount(progress.currentReps, Colors.yellow[300]!),
        _repCount(progress.targetReps, Colors.green[300]!),
      ],
    );
  }

  Widget _repCount(int count, Color color) {
    return Container(
      width: 30,
      height: 30,
      margin: EdgeInsets.all(4),
      alignment: Alignment.center,
      decoration: ShapeDecoration(
        color: color,
        shape: CircleBorder(side: BorderSide(color: color, width: 1)),
      ),
      child: Text(count.toString()),
    );
  }

  Map<Exercise, WorkoutExerciseProgress> _determineProgress() {
    final lastSession = widget.history.workouts.last;

    final workoutWeek = widget.plan.weeksPlan[lastSession.weekNumber];

    final workoutDay = workoutWeek.days[lastSession.day.dayNumber];

    final progress = workoutDay.exercises.map((exercise, set) {
      final exPlan = widget.plan.planForExercise(exercise);

      return MapEntry(
        exercise,
        WorkoutExerciseProgress(
          exercise: exercise,
          startReps: exPlan.startReps,
          currentReps: lastSession.day.exercises[exercise]?.maxReps ?? 0,
          targetReps: exPlan.targetReps,
        ),
      );
    });

    return progress;
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
