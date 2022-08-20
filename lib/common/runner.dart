import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';

import 'app.dart';
import 'di/get_it_container.config.dart';

class Runner {
  static Future<void> run() async {
    WidgetsFlutterBinding.ensureInitialized();
//     const mySystemTheme=
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      systemNavigationBarColor: const Color.fromARGB(255, 34, 64, 74),
    ));
    // LicenseRegistry.addLicense(() async* {
    //   /// требуется для использования google fonts
    //   /// https://pub.dev/packages/google_fonts
    //   final license = await rootBundle.loadString('google_fonts/OFL.txt');
    //   yield LicenseEntryWithLineBreaks(['google_fonts'], license);
    // });

    $initGetIt(
      GetIt.instance,
    );
    runApp(const MyApp());
    // runZonedGuarded<void>(
    //   () {
    //     FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    //     BlocOverrides.runZoned(
    //       () => runApp(const CrossballApp()),
    //       blocObserver: AppBlocObserver.instance(),
    //       eventTransformer: concurrency.sequential<Object?>(),
    //     );
    //   },
    //   (error, stackTrace) {
    //     FirebaseCrashlytics.instance.recordError(error, stackTrace);
    //   },
    // );
  }
}
