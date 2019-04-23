import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';


class LoginValidation extends Given1WithWorld<String, FlutterWorld> {
  LoginValidation()
  : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep(input1) async {
    String input1 = "test@test.com";
  //  await world.driver.tap(find.byValueKey('inputKeyString'));
  //  await world.driver.enterText('darshan@test.com');
    await FlutterDriverUtils.waitForFlutter(world.driver);
    await FlutterDriverUtils.tap(world.driver, find.byValueKey('inputKeyString'));
    await FlutterDriverUtils.enterText(world.driver, find.byValueKey('inputKeyString'), input1);
  }

  @override
  // TODO: implement pattern
  RegExp get pattern => RegExp(r"I expect the user enters email");

}
