import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SubmitButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final Widget child;
  final void Function(bool validate) validateCallback;


  const SubmitButton({Key? key, required this.validateCallback, required this.formKey, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0)
          ),
          minimumSize: Size(MediaQuery.of(context).size.width / 2, 40),
        ),
        onPressed: (){
          var isValidate = formKey.currentState!.validate();
          validateCallback(isValidate);
        },
        child: child
    );
  }
}
