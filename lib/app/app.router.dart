// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i10;
import 'package:flutter/material.dart';
import 'package:navigation_example_app/ui/views/age_picker/age_picker_view.dart'
    as _i4;
import 'package:navigation_example_app/ui/views/family_name/family_name_view.dart'
    as _i8;
import 'package:navigation_example_app/ui/views/family_name/family_name_viewmodel.dart'
    as _i11;
import 'package:navigation_example_app/ui/views/first_name_screen/first_name_screen_view.dart'
    as _i6;
import 'package:navigation_example_app/ui/views/home/home_view.dart' as _i2;
import 'package:navigation_example_app/ui/views/name_complete/name_complete_view.dart'
    as _i9;
import 'package:navigation_example_app/ui/views/onboarding_complete/onboarding_complete_view.dart'
    as _i5;
import 'package:navigation_example_app/ui/views/startup/startup_view.dart'
    as _i3;
import 'package:navigation_example_app/ui/views/welcome_view/welcome_view_view.dart'
    as _i7;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i12;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const agePickerView = '/age-picker-view';

  static const onboardingCompleteView = '/onboarding-complete-view';

  static const firstNameScreenView = '/first-name-screen-view';

  static const welcomeView = '/welcome-view';

  static const familyNameView = '/family-name-view';

  static const nameCompleteView = '/name-complete-view';

  static const all = <String>{
    homeView,
    startupView,
    agePickerView,
    onboardingCompleteView,
    firstNameScreenView,
    welcomeView,
    familyNameView,
    nameCompleteView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.agePickerView,
      page: _i4.AgePickerView,
    ),
    _i1.RouteDef(
      Routes.onboardingCompleteView,
      page: _i5.OnboardingCompleteView,
    ),
    _i1.RouteDef(
      Routes.firstNameScreenView,
      page: _i6.FirstNameScreenView,
    ),
    _i1.RouteDef(
      Routes.welcomeView,
      page: _i7.WelcomeView,
    ),
    _i1.RouteDef(
      Routes.familyNameView,
      page: _i8.FamilyNameView,
    ),
    _i1.RouteDef(
      Routes.nameCompleteView,
      page: _i9.NameCompleteView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.AgePickerView: (data) {
      final args = data.getArgs<AgePickerViewArguments>(
        orElse: () => const AgePickerViewArguments(),
      );
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => _i4.AgePickerView(key: args.key),
        settings: data,
      );
    },
    _i5.OnboardingCompleteView: (data) {
      final args = data.getArgs<OnboardingCompleteViewArguments>(nullOk: false);
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => _i5.OnboardingCompleteView(
            key: args.key,
            namingModel: args.namingModel,
            dateOfBirth: args.dateOfBirth),
        settings: data,
      );
    },
    _i6.FirstNameScreenView: (data) {
      final args = data.getArgs<FirstNameScreenViewArguments>(nullOk: false);
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => _i6.FirstNameScreenView(
            key: args.key, dateOfBirth: args.dateOfBirth),
        settings: data,
      );
    },
    _i7.WelcomeView: (data) {
      return _i10.PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const _i7.WelcomeView(),
        settings: data,
        transitionsBuilder: data.transition ??
            (context, animation, secondaryAnimation, child) {
              return child;
            },
      );
    },
    _i8.FamilyNameView: (data) {
      final args = data.getArgs<FamilyNameViewArguments>(nullOk: false);
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => _i8.FamilyNameView(
            key: args.key,
            firstName: args.firstName,
            dateOfBirth: args.dateOfBirth),
        settings: data,
      );
    },
    _i9.NameCompleteView: (data) {
      final args = data.getArgs<NameCompleteViewArguments>(nullOk: false);
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => _i9.NameCompleteView(
            key: args.key,
            namingModel: args.namingModel,
            onPressed: args.onPressed),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class AgePickerViewArguments {
  const AgePickerViewArguments({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant AgePickerViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class OnboardingCompleteViewArguments {
  const OnboardingCompleteViewArguments({
    this.key,
    this.namingModel,
    required this.dateOfBirth,
  });

  final _i10.Key? key;

  final _i11.NamingModel? namingModel;

  final String dateOfBirth;

  @override
  String toString() {
    return '{"key": "$key", "namingModel": "$namingModel", "dateOfBirth": "$dateOfBirth"}';
  }

  @override
  bool operator ==(covariant OnboardingCompleteViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.namingModel == namingModel &&
        other.dateOfBirth == dateOfBirth;
  }

  @override
  int get hashCode {
    return key.hashCode ^ namingModel.hashCode ^ dateOfBirth.hashCode;
  }
}

class FirstNameScreenViewArguments {
  const FirstNameScreenViewArguments({
    this.key,
    required this.dateOfBirth,
  });

  final _i10.Key? key;

  final String? dateOfBirth;

  @override
  String toString() {
    return '{"key": "$key", "dateOfBirth": "$dateOfBirth"}';
  }

  @override
  bool operator ==(covariant FirstNameScreenViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.dateOfBirth == dateOfBirth;
  }

  @override
  int get hashCode {
    return key.hashCode ^ dateOfBirth.hashCode;
  }
}

class FamilyNameViewArguments {
  const FamilyNameViewArguments({
    this.key,
    required this.firstName,
    required this.dateOfBirth,
  });

  final _i10.Key? key;

  final String? firstName;

  final String? dateOfBirth;

  @override
  String toString() {
    return '{"key": "$key", "firstName": "$firstName", "dateOfBirth": "$dateOfBirth"}';
  }

  @override
  bool operator ==(covariant FamilyNameViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.firstName == firstName &&
        other.dateOfBirth == dateOfBirth;
  }

  @override
  int get hashCode {
    return key.hashCode ^ firstName.hashCode ^ dateOfBirth.hashCode;
  }
}

class NameCompleteViewArguments {
  const NameCompleteViewArguments({
    this.key,
    required this.namingModel,
    this.onPressed,
  });

  final _i10.Key? key;

  final _i11.NamingModel namingModel;

  final void Function()? onPressed;

  @override
  String toString() {
    return '{"key": "$key", "namingModel": "$namingModel", "onPressed": "$onPressed"}';
  }

  @override
  bool operator ==(covariant NameCompleteViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.namingModel == namingModel &&
        other.onPressed == onPressed;
  }

  @override
  int get hashCode {
    return key.hashCode ^ namingModel.hashCode ^ onPressed.hashCode;
  }
}

extension NavigatorStateExtension on _i12.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAgePickerView({
    _i10.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.agePickerView,
        arguments: AgePickerViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOnboardingCompleteView({
    _i10.Key? key,
    _i11.NamingModel? namingModel,
    required String dateOfBirth,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.onboardingCompleteView,
        arguments: OnboardingCompleteViewArguments(
            key: key, namingModel: namingModel, dateOfBirth: dateOfBirth),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFirstNameScreenView({
    _i10.Key? key,
    required String? dateOfBirth,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.firstNameScreenView,
        arguments:
            FirstNameScreenViewArguments(key: key, dateOfBirth: dateOfBirth),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToWelcomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.welcomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFamilyNameView({
    _i10.Key? key,
    required String? firstName,
    required String? dateOfBirth,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.familyNameView,
        arguments: FamilyNameViewArguments(
            key: key, firstName: firstName, dateOfBirth: dateOfBirth),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNameCompleteView({
    _i10.Key? key,
    required _i11.NamingModel namingModel,
    void Function()? onPressed,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.nameCompleteView,
        arguments: NameCompleteViewArguments(
            key: key, namingModel: namingModel, onPressed: onPressed),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAgePickerView({
    _i10.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.agePickerView,
        arguments: AgePickerViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOnboardingCompleteView({
    _i10.Key? key,
    _i11.NamingModel? namingModel,
    required String dateOfBirth,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.onboardingCompleteView,
        arguments: OnboardingCompleteViewArguments(
            key: key, namingModel: namingModel, dateOfBirth: dateOfBirth),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFirstNameScreenView({
    _i10.Key? key,
    required String? dateOfBirth,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.firstNameScreenView,
        arguments:
            FirstNameScreenViewArguments(key: key, dateOfBirth: dateOfBirth),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithWelcomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.welcomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFamilyNameView({
    _i10.Key? key,
    required String? firstName,
    required String? dateOfBirth,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.familyNameView,
        arguments: FamilyNameViewArguments(
            key: key, firstName: firstName, dateOfBirth: dateOfBirth),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNameCompleteView({
    _i10.Key? key,
    required _i11.NamingModel namingModel,
    void Function()? onPressed,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.nameCompleteView,
        arguments: NameCompleteViewArguments(
            key: key, namingModel: namingModel, onPressed: onPressed),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
