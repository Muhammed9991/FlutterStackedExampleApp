import 'package:navigation_example_app/services/data_manager_service.dart';
import 'package:navigation_example_app/ui/views/home/home_view.dart';
import 'package:navigation_example_app/ui/views/welcome_view/welcome_view_view.dart';
import 'package:stacked/stacked.dart';
import 'package:navigation_example_app/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:navigation_example_app/ui/views/Shared/constants.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _dataManager = locator<DataManagerService>();
  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    await Future.delayed(const Duration(seconds: 3));

    bool isFirstNameAvailable =
        await _dataManager.isStringDataAvailable(K.dateOfBirth);
    // This is where you can make decisions on where your app should navigate when
    // you have custom startup logic

    if (isFirstNameAvailable) {
      _navigationService.clearStackAndShowView(const HomeView());
    } else {
      _navigationService.clearStackAndShowView(const WelcomeView());
    }
  }
}
