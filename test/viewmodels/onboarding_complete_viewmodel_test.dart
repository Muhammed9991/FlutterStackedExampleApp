import 'package:flutter_test/flutter_test.dart';
import 'package:navigation_example_app/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('OnboardingCompleteViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
