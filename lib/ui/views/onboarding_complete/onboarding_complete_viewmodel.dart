import 'package:navigation_example_app/ui/views/home/home_view.dart';
import 'package:stacked/stacked.dart';
import 'package:navigation_example_app/services/data_manager_service.dart';
import 'package:navigation_example_app/ui/views/family_name/family_name_viewmodel.dart';
import 'package:navigation_example_app/app/app.locator.dart';
import 'package:navigation_example_app/app/app.logger.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:navigation_example_app/ui/views/Shared/constants.dart';

class OnboardingCompleteViewModel extends BaseViewModel {
  final logger = getLogger('OnboardingCompleteViewModel');
  final _dataManager = locator<DataManagerService>();
  final _navigationService = locator<NavigationService>();

  void navigateToHomeScreen() {
    _navigationService.clearStackAndShowView(const HomeView());
  }

  void init(NamingModel? model, String? dateOfBirth) async {
    if (model != null) {
      logger.i('Saving firstName to disc}');
      await _dataManager.saveString(K.firstName, model.firstName);
      logger.i('Saved firstName to disc}');

      logger.i('Saving familyName to disc}');
      await _dataManager.saveString(K.familyName, model.familyName);
      logger.i('Saved familyName to disc}');
    }

    logger.i('Saving dateOfBirth to disc}');
    if (dateOfBirth != null) {
      await _dataManager.saveString(
          K.dateOfBirth, dateOfBirth);
      logger.i('Saved dateOfBirth to disc}');
    }
  }
}
