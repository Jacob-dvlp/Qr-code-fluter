import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:qr_code_scanner/homepage.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const HomePage());
}
