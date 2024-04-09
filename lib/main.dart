import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uniqcast_flutter_task/services/alice_service.dart';
import 'package:uniqcast_flutter_task/uniqcast_flutter_task_app.dart';

import 'services/logger_service.dart';

///
/// Function first called when running our project
///

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialize [Logger] and [Alice]
  Get
    ..put(
      LoggerService(),
    )
    ..put(
      AliceService(),
    );

  /// Run the `Uniqcast flutter task` app
  runApp(
    UniqcastFlutterTaskApp(),
  );
}
