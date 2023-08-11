import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GeoLocationCall {
  static Future<ApiCallResponse> call() {
    final body = '''
{
  "radioType": "gsm",
  "carrier": "Vodafone",
  "considerIp": true
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GeoLocation',
      apiUrl:
          'https://www.googleapis.com/geolocation/v1/geolocate?key=AIzaSyDVSGe9LpufW2JZ6RWvTWt8uRSEKKtgQyM',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic latitude(dynamic response) => getJsonField(
        response,
        r'''$.location.lat''',
      );
  static dynamic longitude(dynamic response) => getJsonField(
        response,
        r'''$.location.lng''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
