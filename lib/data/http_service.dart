import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpService {
  final String _url = 'https://quotable.io/quotes?page=1&limit=10';

  Map<String, String> _getHeaders() {
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
    };

    return headers;
  }

  void _checkResponse(http.Response response) {
    if (response.statusCode >= 300 || response.statusCode < 200) {
      throw _parseError(response.statusCode, response.body);
    }
  }

  String _parseError(int code, String response) {
    dynamic message = response;

    if (response.contains('DOCTYPE html')) {
      return '$code: An error occurred';
    }

    try {
      final dynamic jsonResponse = json.decode(response);

      message = jsonResponse['message'] ?? jsonResponse;

      if (jsonResponse['errors'] != null && (jsonResponse['errors'] as Map).isNotEmpty) {
        message += '\n';
        try {
          jsonResponse['errors'].forEach((String field, dynamic errors) {
            (errors as List<dynamic>).forEach((dynamic error) => message += '\n • $error');
          });
        } catch (error) {
          print('Failed to parse error: $error');
        }
      }
    } catch (error) {
      print('Failed to parse error: $error');
    }

    return '$code: $message';
  }

  Future<dynamic> get() async {
    final client = http.Client();
    final http.Response response = await client.get(
      Uri.parse(_url),
      headers: _getHeaders(),
    );
    client.close();

    _checkResponse(response);

    final dynamic jsonResponse = json.decode(response.body);

    return jsonResponse;
  }
}
