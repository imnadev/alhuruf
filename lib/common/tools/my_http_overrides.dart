import 'dart:io';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    context?.allowLegacyUnsafeRenegotiation = true;
    return super.createHttpClient(context);
  }
}