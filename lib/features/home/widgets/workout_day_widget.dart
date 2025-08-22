import 'package:fit/domain/models/models.dart';
import 'package:fit/features/home/widgets/rep_count.dart';
import 'package:fit/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WorkoutDayWidget extends StatelessWidget {
  const WorkoutDayWidget({
    super.key,
    required this.workoutDay,
    this.date,
    this.onTap,
  });

  final WorkoutDay workoutDay;
  final DateTime? date;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(Dim.x16),
          child: _content(),
        ),
      ),
    );
  }

  Widget _content() {
    final type = RepCountType.next;
    final workouts = workoutDay.exercises;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(workoutDay.weekAndDay),
            if (date != null) Text(DateFormat.MMMd().format(date!.toLocal())),
          ],
        ),
        spacer(Dim.x16),
        Row(
          children: [
            ...workouts.map(
              (workout) => RepCount(reps: workout.reps.first, type: type),
            ),
            Spacer(),
            if (onTap != null) Icon(Icons.chevron_right),
          ],
        ),
      ],
    );
  }
}
