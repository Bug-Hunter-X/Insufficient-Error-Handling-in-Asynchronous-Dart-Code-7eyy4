```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON
      final jsonData = jsonDecode(response.body);
      // Access data, for example, if it's a list:
      for (var item in jsonData) {
        print(item['name']);
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // You should handle the error more gracefully, maybe re-throwing it
    // or displaying a user-friendly message.
  }
}
```