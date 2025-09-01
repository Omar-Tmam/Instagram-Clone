import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiService {
  final _baseUrl = "https://instagram-social-api.p.rapidapi.com/v1/info?";
  static final Dio _dio = Dio();

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint',
        options: Options(headers: {
          'x-rapidapi-key': dotenv.env['APIKEY'],
          'x-rapidapi-host': 'instagram-social-api.p.rapidapi.com'
        }));
    return response.data;
  }
}
