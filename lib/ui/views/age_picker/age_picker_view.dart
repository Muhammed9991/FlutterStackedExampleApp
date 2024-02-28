import 'package:flutter/material.dart';
import 'package:navigation_example_app/ui/views/Shared/custom_button.dart';
import 'package:stacked/stacked.dart';
import 'age_picker_viewmodel.dart';
import 'package:navigation_example_app/ui/common/ui_helpers.dart';

class AgePickerView extends StackedView<AgePickerViewModel> {
  AgePickerView({Key? key}) : super(key: key);
  final TextEditingController dateInput = TextEditingController();

  @override
  Widget builder(
    BuildContext context,
    AgePickerViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select your date of Birth'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: viewModel.dateInput,
                decoration: const InputDecoration(
                  icon: Icon(Icons.calendar_today),
                ),
                readOnly: true,
                onTap: () async {
                  await viewModel.onTextFieldTapped(context);
                },
              ),
              verticalSpaceLarge,
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CustomButton(
                  buttonText: 'Next',
                  isDisabled: viewModel.dateOfBirth == '',
                  onPressed:
                      viewModel.dateOfBirth == '' ? null : viewModel.navigate,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  AgePickerViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AgePickerViewModel();
}
