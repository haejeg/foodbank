import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class WeatherCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'weather',
      apiUrl:
          'http://api.openweathermap.org/data/2.5/weather?q=Fort%20Collins&appid=dcb45342047b8ec7d3da562f53e8688f',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}
