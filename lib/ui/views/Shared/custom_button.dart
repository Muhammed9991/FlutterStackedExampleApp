import 'package:navigation_example_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;
  final bool isDisabled;

  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: isDisabled ? kcLightGrey : kcDarkGreyColor,
      disabledColor: kcLightGrey,
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
