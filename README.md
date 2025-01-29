# Unhandled Exception in Asynchronous Network Request

This repository demonstrates a common error in Dart:  unhandled exceptions during asynchronous network requests.  The `bug.dart` file shows an example of incomplete error handling, while `bugSolution.dart` provides a more robust solution.

## Bug
The initial code lacks comprehensive error handling.  While a `try-catch` block is present,  it only prints the error to the console; it does not handle different types of exceptions separately nor does it implement retry logic.  In a production environment, this would lead to a poor user experience.