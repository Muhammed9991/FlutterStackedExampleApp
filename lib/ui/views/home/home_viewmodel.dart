import 'package:navigation_example_app/app/app.locator.dart';
import 'package:navigation_example_app/app/app.router.dart';
import 'package:navigation_example_app/services/data_manager_service.dart';
import 'package:navigation_example_app/ui/views/first_name_screen/first_name_screen_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:navigation_example_app/ui/views/Shared/constants.dart';

class HomeViewModel extends BaseViewModel {
  final _dataManager = locator<DataManagerService>();
  final _navigationService = locator<NavigationService>();
  String? fullName;
  String? dateOfBirth;

  void didTapUpdateNameButton() {
    _navigationService
        .navigateToView(const FirstNameScreenView(dateOfBirth: null));
  }

  Future<String?> getFullName() async {
    bool isFirstNameAvailable =
        await _dataManager.isStringDataAvailable(K.firstName);

    bool isFamilyNameAvailable =
        await _dataManager.isStringDataAvailable(K.familyName);

    if (isFamilyNameAvailable && isFirstNameAvailable) {
      String firstName = await _dataManager.loadString(K.firstName);
      String familyName = await _dataManager.loadString(K.familyName);
      return '$firstName $familyName';
    }

    return null;
  }

  Future<String?> getDateOfBirth() async {
    bool isDateOfBirthAvailable =
        await _dataManager.isStringDataAvailable(K.dateOfBirth);

    if (isDateOfBirthAvailable) {
      return await _dataManager.loadString(K.dateOfBirth);
    }

    return null;
  }

  Future<void> onLogOutButtonTapped() async {
    await _dataManager.deleteAll();
    await _navigationService.navigateTo(Routes.welcomeView,
        transition: TransitionsBuilders.slideRight);
  }

  Future<void> init() async {
    fullName = await runBusyFuture(getFullName());
    dateOfBirth = await runBusyFuture(getDateOfBirth());
  }
}
