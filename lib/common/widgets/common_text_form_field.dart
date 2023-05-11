import 'package:flutter/material.dart';

class CommonTextFormField extends StatelessWidget {
  final String? Function(String?)? validator;
  final String? label;
  final String? hintText;
  final EdgeInsetsGeometry padding;

  const CommonTextFormField({
    Key? key,
    this.validator,
    this.label,
    this.hintText,
    required this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
        validator: validator,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            label: Text(label ?? ''),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: Colors.blue,
              ),
            )
        ),
      ),
    );
  }
}
