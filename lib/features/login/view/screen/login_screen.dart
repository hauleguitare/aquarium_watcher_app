import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatelessWidget {
  final String _imageURL = "assets/images/robot_face_amico.png";

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appLocalizations = AppLocalizations.of(context)!;
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text(_appLocalizations.userName),
                      hintText: _appLocalizations.plHolder_username
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        label: Text(_appLocalizations.password),
                        hintText: _appLocalizations.plHolder_password,
                        suffix: IconButton(
                          icon: Icon(Icons.visibility),
                          onPressed: (){},
                        )

                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
