import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:navigation_example_app/app/app.locator.dart';
import 'package:navigation_example_app/ui/views/age_picker/age_picker_viewmodel.dart';
import 'package:navigation_example_app/ui/views/onboarding_complete/onboarding_complete_view.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('AgePickerViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());

    test(
        'On next button tapped, user is below 18 so should navigate to onboarding complete',
        () {
      final ageHelperService = getAndRegisterAgeHelperService();
      final navigationService = getAndRegisterNavigationService();
      final model = AgePickerViewModel();

      when(ageHelperService.isUserAbove18(any)).thenReturn(false);

      model.navigate();

      verify(navigationService.clearStackAndShowView(
              const OnboardingCompleteView(dateOfBirth: '')))
          .called(1);
    });
  });
}
