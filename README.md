# Insufficient Error Handling in Asynchronous Dart Code

This repository showcases a common error in asynchronous Dart code: neglecting proper error handling. The `bug.dart` file contains code that fetches data from an API.  If an error occurs during the API call, the error is simply printed to the console. This is insufficient for a production application.

The `bugSolution.dart` file demonstrates improved error handling with more informative error messages and potential recovery strategies.

## How to Reproduce
1. Clone this repository.
2. Run `bug.dart`. Observe the lack of detailed error messages when the API call fails.
3. Run `bugSolution.dart`. See how error handling has been improved to provide more context and handle potential failures gracefully.