import 'package:flutter/material.dart';
import 'package:navigation_example_app/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home screen'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            viewModel.fullName != null
                ? Row(
                    children: [
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MaterialButton(
                          color: kcDarkGreyColor,
                          onPressed: viewModel.didTapUpdateNameButton,
                          child: const Text(
                            'Update name',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : const SizedBox.shrink(),
            const Spacer(),
            const Text(
              'Summary',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            viewModel.dateOfBirth != null
                ? Row(
                    children: [
                      const Spacer(),
                      const Text(
                        'Date of birth: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        viewModel.dateOfBirth!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                    ],
                  )
                : const SizedBox.shrink(),
            viewModel.fullName != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      const Text(
                        'Name: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        viewModel.fullName!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                    ],
                  )
                : const SizedBox.shrink(),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: MaterialButton(
                color: kcDarkGreyColor,
                child: const Text(
                  'Log out',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  viewModel.onLogOutButtonTapped();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void onViewModelReady(HomeViewModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
