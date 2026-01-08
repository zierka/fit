import 'package:fit/di/providers.dart';
import 'package:fit/domain/models/models.dart';
import 'package:fit/features/home/widgets/workout_day_widget.dart';
import 'package:fit/features/home/widgets/workout_plan_summary_widget.dart';
import 'package:fit/features/workout/workout_session_input.dart';
import 'package:fit/features/workout/workout_session_screen.dart';
import 'package:fit/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late final _viewModel = ref.read(homeViewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('F I T')),
      body: _body(),
    );
  }

  Widget _body() {
    return ValueListenableBuilder(
      valueListenable: _viewModel.state,
      builder: (context, state, _) {
        return state.dataLoadingExecution.when(
          idle: () => const LoadingIndicator(),
          executing: () => const LoadingIndicator(),
          failed: () => const Center(child: Text('Failed to load data')),
          succeeded: () => _content(),
        );
      },
    );
  }

  Widget _content() {
    return ListView(
      padding: EdgeInsets.all(Dim.x16),
      children: [
        WorkoutPlanSummaryWidget(
          plan: _viewModel.state.value.workoutPlan!,
          history: _viewModel.state.value.workoutHistory!,
        ),
        spacer(Dim.x16),
        _nextUp(),
        spacer(Dim.x16),
        _pastSessions(),
      ],
    );
  }

  Widget _nextUp() {
    final nextWorkoutDay =
        _viewModel.state.value.nextWorkoutDay ??
        _viewModel.state.value.workoutPlan!.weeksPlan.first.days.first;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Next Up'),
        spacer(Dim.x8),
        WorkoutDayWidget(
          workoutDay: nextWorkoutDay,
          onTap: () => _onTapNextWorkout(nextWorkoutDay),
        ),
      ],
    );
  }

  Future<void> _onTapNextWorkout(WorkoutDay nextWorkoutDay) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return WorkoutSessionScreen(
            input: WorkoutSessionInput(workoutDay: nextWorkoutDay),
          );
        },
      ),
    );

    _viewModel.reload();
  }

  Widget _pastSessions() {
    final sessions = _viewModel.state.value.workoutHistory?.workouts ?? [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Past Sessions'),
        spacer(Dim.x8),
        ...sessions.reversed.map(
          (session) => WorkoutDayWidget(
            workoutDay: session.day,
            date: session.date,
            onTap: () => _onTapNextWorkout(session.day),
          ),
        ),
      ],
    );
  }
}
