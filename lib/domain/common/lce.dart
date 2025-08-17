sealed class Lce<T, E> {
  const Lce();

  bool get isLoading => this is Loading<T, E>;

  bool get isContent => this is Content<T, E>;

  bool get isError => this is Error<T, E>;

  T? get valueOrNull =>
      this is Content<T, E> ? (this as Content<T, E>).value : null;

  E? get errorOrNull =>
      this is Error<T, E> ? (this as Error<T, E>).error : null;

  U when<U>({
    required U Function() loading,
    required U Function(T) success,
    required U Function(E?) error,
  }) => switch (this) {
    Loading() => loading.call(),
    Content(value: final v) => success.call(v),
    Error(error: final e) => error.call(e),
  };
}

final class Loading<T, E> extends Lce<T, E> {
  const Loading();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Loading && runtimeType == other.runtimeType;

  @override
  int get hashCode => 0;
}

final class Content<T, E> extends Lce<T, E> {
  const Content(this.value);

  final T value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Content &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}

final class Error<T, E> extends Lce<T, E> {
  const Error([this.error]);

  final E? error;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Error &&
          runtimeType == other.runtimeType &&
          error == other.error;

  @override
  int get hashCode => error.hashCode;
}
