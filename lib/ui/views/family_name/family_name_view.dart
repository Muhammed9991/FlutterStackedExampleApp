import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:navigation_example_app/ui/views/Shared/custom_button.dart';
import 'family_name_viewmodel.dart';

class FamilyNameView extends StackedView<FamilyNameViewModel> {
  final String? dateOfBirth;
  final String? firstName;
  const FamilyNameView({
    Key? key,
    required this.firstName,
    required this.dateOfBirth,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FamilyNameViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(title: const Text('Enter your family name')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: viewModel.familyNameInput,
                onChanged: (value) => {viewModel.onTextFieldUpdated(value)},
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CustomButton(
                  buttonText: 'Next',
                  isDisabled: viewModel.isButtonDisabled,
                  onPressed: () => viewModel.isButtonDisabled
                      ? null
                      : viewModel.naivgateToNameCompleteScreen(firstName),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void onViewModelReady(FamilyNameViewModel viewModel) {
    viewModel.init(dateOfBirth);
    super.onViewModelReady(viewModel);
  }

  @override
  FamilyNameViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FamilyNameViewModel();
}
