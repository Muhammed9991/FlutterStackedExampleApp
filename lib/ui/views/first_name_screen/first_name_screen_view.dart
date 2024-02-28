import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:navigation_example_app/ui/views/Shared/custom_button.dart';
import 'first_name_screen_viewmodel.dart';

class FirstNameScreenView extends StackedView<FirstNameScreenViewModel> {
  final String? dateOfBirth;
  const FirstNameScreenView({
    Key? key,
    required this.dateOfBirth,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FirstNameScreenViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(title: const Text('Enter your first name')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: viewModel.firstNameInput,
                onChanged: (value) => {viewModel.onTextFieldUpdated(value)},
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CustomButton(
                  buttonText: 'Next',
                  isDisabled: viewModel.isButtonDisabled,
                  onPressed: viewModel.isButtonDisabled
                      ? null
                      : viewModel.navigateToFamilyNameScreen,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void onViewModelReady(FirstNameScreenViewModel viewModel) {
    viewModel.init(dateOfBirth);
    super.onViewModelReady(viewModel);
  }

  @override
  FirstNameScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FirstNameScreenViewModel();
}
