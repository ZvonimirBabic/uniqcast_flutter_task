import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uniqcast_flutter_task/services/alice_service.dart';
import 'package:uniqcast_flutter_task/services/logger_service.dart';
import 'package:uniqcast_flutter_task/utils/initial_bindings.dart';
import 'package:uniqcast_flutter_task/utils/routes.dart';

class UniqcastFlutterTaskApp extends StatelessWidget {
  UniqcastFlutterTaskApp({super.key});

  final logger = Get.find<LoggerService>();
  final alice = Get.find<AliceService>().alice;

  /// Logs everything using [Logger] package
  void loggingWithLogger(String text, {bool isError = false}) =>
      isError ? logger.e(text) : logger.d(text);

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        navigatorKey: alice.getNavigatorKey(),
        onGenerateTitle: (_) => 'appName'.tr,
        // theme: theme,
        initialRoute: Routes.loginScreen,
        initialBinding: InitialBinding(),
        getPages: pages,
        logWriterCallback: loggingWithLogger,
        // locale: Localization.locale,
        // fallbackLocale: Localization.fallbackLocale,
        // translations: Localization(),
      );
}
