```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      //More specific error handling
      throw Exception('Request failed with status: ${response.statusCode}.  Response Body: ${response.body}');
    }
  } on FormatException catch (e) {
    // Handle JSON decoding errors
    print('JSON decoding error: $e');
    return null; //or throw
  } on SocketException catch (e) {
    // Handle network errors
    print('Network error: $e');
    return null; //or throw
  } catch (e) {
    // Handle other exceptions
    print('An unexpected error occurred: $e');
    return null; //or throw
  }
}
```