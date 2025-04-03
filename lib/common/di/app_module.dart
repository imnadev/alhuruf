import 'package:alice/alice.dart';
import 'package:alice/model/alice_configuration.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';

@module
abstract class AppModule {
  @lazySingleton
  Logger get logger => Logger();

  @lazySingleton
  Alice get alice =>
      Alice(configuration: AliceConfiguration(showNotification: kProfileMode));

  @lazySingleton
  RxSharedPreferences get preferences =>
      RxSharedPreferences(SharedPreferences.getInstance());
}
