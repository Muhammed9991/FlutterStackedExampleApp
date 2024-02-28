import 'package:navigation_example_app/app/app.locator.dart';
import 'package:navigation_example_app/app/app.router.dart';
import 'package:navigation_example_app/services/age_helper_service.dart';
import 'package:navigation_example_app/ui/views/onboarding_complete/onboarding_complete_view.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked_services/stacked_services.dart';

class AgePickerViewModel extends BaseViewModel {
  String _dateOfBirth = '';
  String get dateOfBirth => _dateOfBirth;
  final TextEditingController dateInput = TextEditingController();
  final _navigationService = locator<NavigationService>();
  final _ageHelperService = locator<AgeHelperService>();

  void setDateOfBirth(String dateOfBirth) {
    _dateOfBirth = dateOfBirth;
    dateInput.text = dateOfBirth;
  }

  Future<void> onTextFieldTapped(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      initialDate: DateTime.now(),
      context: context,
      firstDate: DateTime(1900, 8),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      String dateOfBirth = DateFormat('yyyy-MM-dd').format(pickedDate);
      setDateOfBirth(dateOfBirth);
      notifyListeners();
    }
  }

  void navigateToOnboardingComplete() {
    _navigationService.clearStackAndShowView(OnboardingCompleteView(
      dateOfBirth: _dateOfBirth),
    );
  }

  void navigateToFirstNameScreen() {
    _navigationService.navigateToFirstNameScreenView(
      dateOfBirth: _dateOfBirth,
    );
  }

  void navigate() {
    if (_ageHelperService.isUserAbove18(_dateOfBirth)) {
      navigateToFirstNameScreen();
    } else {
      navigateToOnboardingComplete();
    }
  }
}
