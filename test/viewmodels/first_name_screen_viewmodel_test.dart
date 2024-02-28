import 'package:flutter_test/flutter_test.dart';
import 'package:navigation_example_app/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('FirstNameScreenViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
