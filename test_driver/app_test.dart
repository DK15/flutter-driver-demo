import 'dart:io';

import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';


void main() {
  group('Flutter Driver demo', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();

      new Directory('screenshots').create();
    });

    tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
    });


    test('Flutter drive methods demo', () async {

      await driver.tap(find.byValueKey('inputKeyString'));
      await driver.enterText('Hello !');
      await takeScreenshot(driver, 'screenshots/entered_text.png');
      await driver.waitFor(find.text('Hello !'));
      await driver.enterText('World');
      await takeScreenshot(driver, 'screenshots/new_text.png');
      await driver.waitForAbsent(find.text('Hello !'));
      print('World');
      await driver.waitFor(find.byValueKey('button'));
      await driver.tap(find.byValueKey('button'));
      print('Button clicked');
      await driver.waitFor(find.byValueKey('text'));
      await driver.scrollIntoView(find.byValueKey('text'));
      await driver.waitFor(find.text('Scroll till here'));
      print('I found you buddy !');
    });

  });
}
  takeScreenshot(FlutterDriver driver, String path) async {
  final List<int> pixels = await driver.screenshot();

  final File file = new File(path);
  await file.writeAsBytes(pixels);
  print('wrote $file');
  print(path);
}

