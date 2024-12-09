# Unhandled Exception in Dart async/await
This example demonstrates a common error in Dart when using `async`/`await` with `Future`s.  The `catch` block handles exceptions, but silently ignores the error, making it difficult to debug.

The `bug.dart` file shows the flawed error handling, while `bugSolution.dart` presents a corrected version that properly handles and re-throws exceptions.