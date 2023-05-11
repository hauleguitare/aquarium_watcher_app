import 'package:flutter/material.dart';

class CommonTextButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const CommonTextButton({Key? key, required this.label, required this.onPressed}) : super(key: key);

  @override
  TextButton build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          splashFactory: InkSparkle.splashFactory
        ),
        child: Text(label),
    );
  }
}
