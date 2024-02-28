import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:navigation_example_app/ui/views/Shared/custom_button.dart';
import 'package:navigation_example_app/ui/views/family_name/family_name_viewmodel.dart';
import 'onboarding_complete_viewmodel.dart';

class OnboardingCompleteView extends StackedView<OnboardingCompleteViewModel> {
  final NamingModel? namingModel;
  final String dateOfBirth;
  const OnboardingCompleteView({
    Key? key,
    this.namingModel,
    required this.dateOfBirth,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OnboardingCompleteViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Onboarding complete'),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            const Text('WOOOOHOOOO! Onboarding complete'),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  const Spacer(),
                  CustomButton(
                      buttonText: 'Next',
                      onPressed: viewModel.navigateToHomeScreen)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void onViewModelReady(OnboardingCompleteViewModel viewModel) {
    viewModel.init(
      namingModel,
      dateOfBirth,
    );
    super.onViewModelReady(viewModel);
  }

  @override
  OnboardingCompleteViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OnboardingCompleteViewModel();
}
