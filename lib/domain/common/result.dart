sealed class Result<T, E> {
  bool get isSuccess => this is Success<T, E>;

  bool get isFailure => this is Failure<T, E>;
}

class Success<T, E> extends Result<T, E> {
  Success(this.value);

  final T value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Success<T, E> &&
          runtimeType == other.runtimeType &&
          value == other.value);

  @override
  int get hashCode => value.hashCode;
}

class Failure<T, E> extends Result<T, E> {
  Failure(this.error);

  final E error;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Failure<T, E> &&
          runtimeType == other.runtimeType &&
          error == other.error);

  @override
  int get hashCode => error.hashCode;
}
