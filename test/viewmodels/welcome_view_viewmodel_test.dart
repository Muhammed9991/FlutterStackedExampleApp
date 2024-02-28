import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:navigation_example_app/app/app.locator.dart';
import 'package:navigation_example_app/app/app.router.dart';
import 'package:navigation_example_app/ui/views/welcome_view/welcome_view_viewmodel.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('WelcomeViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());

    test('On next button tapped, navigate to age picker view', () {
      final navigationService = getAndRegisterNavigationService();
      final model = WelcomeViewModel();

      model.navigateToAgePicker();

      verify(navigationService.navigateToAgePickerView());
    });
  });
}
