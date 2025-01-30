```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      for (var item in jsonData) {
        print(item['name']);
      }
    } else {
      //More informative error message
      throw Exception('Failed to load data. Status code: ${response.statusCode}. Response body: ${response.body}');
    }
  } on FormatException catch (e) {
    // Handle JSON decoding errors
    print('Error decoding JSON: $e');
  } on Exception catch (e) {
    //Handle other exceptions
    print('An error occurred: $e');
    //Consider showing a user-friendly error message or retrying the operation
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
```