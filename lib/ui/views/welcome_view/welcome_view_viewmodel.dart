import 'package:stacked/stacked.dart';
import 'package:navigation_example_app/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:navigation_example_app/app/app.router.dart';

class WelcomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToAgePicker() {
    _navigationService.navigateToAgePickerView();
  }
}
