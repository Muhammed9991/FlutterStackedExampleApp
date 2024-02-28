import 'package:flutter/material.dart';
import 'package:navigation_example_app/ui/views/family_name/family_name_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:navigation_example_app/ui/views/Shared/custom_button.dart';
import 'name_complete_viewmodel.dart';

class NameCompleteView extends StackedView<NameCompleteViewModel> {
  final NamingModel namingModel;
  final VoidCallback? onPressed;
  const NameCompleteView({
    Key? key,
    required this.namingModel,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NameCompleteViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Name complete screen'),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            const Text('Your full name is:'),
            Text(
              viewModel.fullName(namingModel),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    buttonText: 'Next',
                    onPressed: onPressed,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  NameCompleteViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NameCompleteViewModel();
}
