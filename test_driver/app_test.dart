import 'dart:async';
import 'package:glob/glob.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'steps/steps.dart';
import 'package:gherkin/gherkin.dart';

Future<void> main() {
  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/features/**.feature")]
    ..reporters = [ProgressReporter(), TestRunSummaryReporter()]
    ..restartAppBetweenScenarios = true
    ..targetAppPath = "test_driver/app.dart"
    ..exitAfterTestRun = true;
  return GherkinRunner().execute(config);
}
