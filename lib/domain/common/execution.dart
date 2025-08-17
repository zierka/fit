sealed class Execution {
  const Execution();

  bool get isIdle => this is Idle;

  bool get isExecuting => this is Executing;

  bool get isFailed => this is Failed;

  bool get isSucceeded => this is Succeeded;

  U when<U>({
    required U Function() idle,
    required U Function() executing,
    required U Function() failed,
    required U Function() succeeded,
  }) {
    if (isIdle) {
      return idle();
    } else if (isExecuting) {
      return executing();
    } else if (isFailed) {
      return failed();
    } else {
      return succeeded();
    }
  }
}

final class Idle extends Execution {
  const Idle();
}

final class Executing extends Execution {
  const Executing();
}

final class Failed extends Execution {
  const Failed();
}

final class Succeeded extends Execution {
  const Succeeded();
}
