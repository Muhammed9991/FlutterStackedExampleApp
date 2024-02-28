import 'package:navigation_example_app/app/app.logger.dart';
import 'package:navigation_example_app/ui/views/family_name/family_name_viewmodel.dart';
import 'package:stacked/stacked.dart';

class NameCompleteViewModel extends BaseViewModel {
  final logger = getLogger('NameCompleteViewModel');

  String fullName(NamingModel model) {
    return '${model.firstName} ${model.familyName}';
  }
}
