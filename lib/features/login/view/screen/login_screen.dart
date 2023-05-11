import 'package:aquarium_watcher_app/common/widgets/common_bottom_modal_change_language.dart';
import 'package:aquarium_watcher_app/common/widgets/common_button_language.dart';
import 'package:aquarium_watcher_app/common/widgets/common_hidden_text_form_field.dart';
import 'package:aquarium_watcher_app/common/widgets/common_text_button.dart';
import 'package:aquarium_watcher_app/common/widgets/common_text_form_field.dart';
import 'package:aquarium_watcher_app/features/login/view/widgets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final String _imageURL = "assets/images/robot_face_amico.png";

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;

    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CommonButtonLanguage(
                          onPressed: () => _onPressedLanguage(context),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                            _imageURL,
                            width: 200,
                            height: 200,
                        ),
                      ],
                    ),
                    CommonTextFormField(
                      padding: const EdgeInsets.all(8),
                      label: appLocalizations.userName,
                      hintText: appLocalizations.userName,
                      validator: (input) => _validateUsername(input, appLocalizations)
                    ),
                    CommonHiddenTextFormField(
                        padding: const EdgeInsets.all(8),
                        label: appLocalizations.password,
                        hintText: appLocalizations.plHolder_password,
                        validator: (input) => _validatePassword(input, appLocalizations),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(appLocalizations.forgotPassword_questionMarkDot),
                        CommonTextButton(
                          onPressed: _onForgotPassword,
                          label: appLocalizations.clickHere,
                        )
                      ],
                    ),
                    SubmitButton(
                      formKey: _formKey,
                      validateCallback: (validate){
                          if (validate){
                            print("validate success");
                          }
                      },
                      child: Text(
                          appLocalizations.login,
                        style: const TextStyle(
                          fontSize: 16
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
      ),
    );
  }


  String? _validateUsername(String? input, AppLocalizations appLocalization){
      if (input == null || input.isEmpty){
        return appLocalization.messagePleaseEnterUsername;
      }
  }
  String? _validatePassword(String? input, AppLocalizations appLocalization){
    if (input == null || input.isEmpty){
      return appLocalization.messagePleaseEnterPassword;
    }
  }

  void _onForgotPassword(){

  }

  void _onPressedLanguage(BuildContext context){
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
            return CommonBottomModalChangeLanguage();
        });
  }


}
