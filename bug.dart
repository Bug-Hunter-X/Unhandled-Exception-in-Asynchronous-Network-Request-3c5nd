```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Success, process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access data like jsonData['key']
    } else {
      // Handle error, response code is not 200
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network requests
    print('Error fetching data: $e');
    // Consider rethrowing the exception or handling it differently
    rethrow;
  }
}
```