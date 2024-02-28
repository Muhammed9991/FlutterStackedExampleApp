import 'package:navigation_example_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:navigation_example_app/app/app.locator.dart';

class FirstNameScreenViewModel extends BaseViewModel {
  String? _dateOfBirth;
  final TextEditingController firstNameInput = TextEditingController();
  bool _isButtonDisabled = true;
  bool get isButtonDisabled => _isButtonDisabled;
  final _navigationService = locator<NavigationService>();

  void onTextFieldUpdated(String value) {
    _isButtonDisabled = value.isEmpty;
    firstNameInput.text = value;
    notifyListeners();
  }

  void navigateToFamilyNameScreen() {
    _navigationService.navigateToFamilyNameView(
      firstName: firstNameInput.text,
      dateOfBirth: _dateOfBirth,
    );
  }

  void init(String? dateOfBirth) {
    _dateOfBirth = dateOfBirth;
  }
}
