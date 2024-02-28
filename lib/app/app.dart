import 'package:navigation_example_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:navigation_example_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:navigation_example_app/ui/views/home/home_view.dart';
import 'package:navigation_example_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:navigation_example_app/ui/views/age_picker/age_picker_view.dart';
import 'package:navigation_example_app/ui/views/onboarding_complete/onboarding_complete_view.dart';
import 'package:navigation_example_app/services/age_helper_service.dart';
import 'package:navigation_example_app/ui/views/first_name_screen/first_name_screen_view.dart';
import 'package:navigation_example_app/ui/views/welcome_view/welcome_view_view.dart';
import 'package:navigation_example_app/ui/views/family_name/family_name_view.dart';
import 'package:navigation_example_app/ui/views/name_complete/name_complete_view.dart';
import 'package:navigation_example_app/services/data_manager_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: AgePickerView),
    MaterialRoute(page: OnboardingCompleteView),
    MaterialRoute(page: FirstNameScreenView),
    CustomRoute(page: WelcomeView),
    MaterialRoute(page: FamilyNameView),
    MaterialRoute(page: NameCompleteView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AgeHelperService),
    LazySingleton(classType: DataManagerService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
  logger: StackedLogger(),
)
class App {}
