```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // ... use jsonData ...
    } else {
      // Handle error response - rethrow for better error tracing
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during API call - re-throw for better error tracing
    print('Error fetching data: $e');
    rethrow; // Re-throw the exception to be handled higher up the call stack
  }
}
```