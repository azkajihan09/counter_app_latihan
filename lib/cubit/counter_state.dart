part of 'counter_cubit.dart';

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
  List<Object> get props => [counterStatus, counter, error];

  @override
  bool get stringify => true;

  CounterState copyWith({
    CounterStatus? status,
    int? counter,
    String? error,
  }) {
    return CounterState(
      counterStatus: status ?? counterStatus,
      counter: counter ?? this.counter,
      error: error ?? this.error,
    );
  }
}
