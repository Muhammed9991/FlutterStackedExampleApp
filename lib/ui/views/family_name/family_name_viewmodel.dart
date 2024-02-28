import 'package:navigation_example_app/ui/views/onboarding_complete/onboarding_complete_view.dart';
import 'package:stacked/stacked.dart';
import 'package:navigation_example_app/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:navigation_example_app/app/app.locator.dart';

class FamilyNameViewModel extends BaseViewModel {
  String? _dateOfBirth;
  final TextEditingController familyNameInput = TextEditingController();
  bool _isButtonDisabled = true;
  bool get isButtonDisabled => _isButtonDisabled;
  final _navigationService = locator<NavigationService>();

  void onTextFieldUpdated(String value) {
    _isButtonDisabled = value.isEmpty;
    familyNameInput.text = value;
    notifyListeners();
  }

  void naivgateToNameCompleteScreen(String? firstName) {
    if (firstName != null) {
      NamingModel model = NamingModel(firstName, familyNameInput.text);
      _navigationService.replaceWithNameCompleteView(
        namingModel: model,
        onPressed: () => {navigateToOnboardingCompleteScreen(firstName)},
      );
    }
  }

  void navigateToOnboardingCompleteScreen(String firstName) {
    _navigationService.clearStackAndShowView(
      OnboardingCompleteView(
        dateOfBirth: _dateOfBirth != null ? _dateOfBirth! : '',
        namingModel: NamingModel(
          firstName,
          familyNameInput.text,
        ),
      ),
    );
  }

  void init(String? dateOfBirth) {
    _dateOfBirth = dateOfBirth;
  }
}

class NamingModel {
  String firstName;
  String familyName;

  NamingModel(this.firstName, this.familyName);
}
