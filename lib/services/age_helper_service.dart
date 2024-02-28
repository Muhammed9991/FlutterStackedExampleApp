import 'package:intl/intl.dart';

class AgeHelperService {
  bool isUserAbove18(String dateOfBirth) {
    final dateFormatter = DateFormat('yyyy-MM-dd');

    DateTime now = DateTime.now();

    try {
      DateTime birthDate = dateFormatter.parse(dateOfBirth);

      Duration ageDifference = now.difference(birthDate);
      int ageInYears = ageDifference.inDays ~/ 365;

      return ageInYears >= 18;
    } catch (e) {
      // Being safe and assuming they are under 18. In reality some more logic will need to happen here
      return false;
    }
  }
}
