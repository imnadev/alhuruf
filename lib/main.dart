import 'package:alhuruf/common/di/injection.dart';
import 'package:alhuruf/firebase_options.dart';
import 'package:alhuruf/presentation/app/app.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await EasyLocalization.ensureInitialized();
  await configureDependencies();
  runApp(const App());
}
