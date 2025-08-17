import 'package:fit/di/providers.dart';
import 'package:fit/features/home/widgets/workout_day_widget.dart';
import 'package:fit/features/home/widgets/workout_plan_summary_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../presentation/widgets/loading_indicator.dart';

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
      children: [
        WorkoutPlanSummaryWidget(
          plan: _viewModel.state.value.workoutPlan!,
          history: _viewModel.state.value.workoutHistory!,
        ),
        _nextUp(),
      ],
    );
  }

  Widget _nextUp() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text('Next Up'), SizedBox(height: 12.0), WorkoutDayWidget()],
    );
  }
}
