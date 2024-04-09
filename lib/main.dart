import 'package:flutter/material.dart';
import 'package:uniqcast_flutter_task/uniqcast_flutter_task_app.dart';

///
/// Function first called when running our project
///

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Run the `Uniqcast flutter task` app
  runApp(
    UniqcastFlutterTaskApp(),
  );
}
