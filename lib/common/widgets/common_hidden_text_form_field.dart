import 'package:flutter/material.dart';

class CommonHiddenTextFormField extends StatefulWidget {
  final String? Function(String?)? validator;
  final String? label;
  final String? hintText;
  final EdgeInsetsGeometry padding;

  const CommonHiddenTextFormField({
    Key? key,
    this.validator,
    this.label,
    this.hintText,
    required this.padding
  }) : super(key: key);

  @override
  State<CommonHiddenTextFormField> createState() => _CommonHiddenTextFormFieldState();
}

class _CommonHiddenTextFormFieldState extends State<CommonHiddenTextFormField> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: TextFormField(
        obscureText: isHidden,
        validator: widget.validator,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            label: Text(widget.label ?? ''),
            hintText: widget.hintText,
            suffixIcon: IconButton(
              splashRadius: 5,
              icon: _renderIconVisible(),
              onPressed: _onPressedVisible
            ),
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

  Icon _renderIconVisible(){
    return Icon(
      isHidden ? Icons.visibility : Icons.visibility_off,
    );
  }

  void _onPressedVisible(){
    setState(() {
      isHidden = ! isHidden;
    });
  }

}
