import 'package:alice/alice.dart';
import 'package:alice_dio/alice_dio_adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class NetworkModule {
  @injectable
  Dio dio(BaseOptions baseOptions, Alice alice) {
    final dio = Dio(baseOptions);
    if (kDebugMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
        ),
      );
    }
    if (kProfileMode) {
      final adapter = AliceDioAdapter();
      alice.addAdapter(adapter);
      dio.interceptors.add(adapter);
    }
    return dio;
  }

  @injectable
  BaseOptions baseOptions() => BaseOptions();
}
