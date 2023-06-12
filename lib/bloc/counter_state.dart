part of 'counter_bloc.dart';

enum CounterStatus {
  initial,
  loading,
  success,
  error,
}

class CounterState extends Equatable {
  const CounterState({
    required this.counterStatus,
    required this.counter,
    required this.error,
  });

  factory CounterState.initial() {
    return const CounterState(
      counterStatus: CounterStatus.initial,
      counter: 0,
      error: '',
    );
  }

  final CounterStatus counterStatus;
  final int counter;
  final String error;

  @override
  List<Object> get props => [ counterStatus, counter, error ];

  @override
  bool get stringify => true;

  CounterState copyWith({
    CounterStatus? counterStatus,
    int? counter,
    String? error,
  }) {
    return CounterState(
      counterStatus: counterStatus ?? this.counterStatus,
      counter: counter ?? this.counter,
      error: error ?? this.error,
    );
  }
}
