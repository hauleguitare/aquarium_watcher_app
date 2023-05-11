import 'package:aquarium_watcher_app/core/languages/language_bloc.dart';
import 'package:aquarium_watcher_app/core/languages/language_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonButtonLanguage extends StatefulWidget {
  final VoidCallback onPressed;

  const CommonButtonLanguage({Key? key, required this.onPressed}) : super(key: key);

  @override
  State<CommonButtonLanguage> createState() => _CommonButtonLanguageState();
}

class _CommonButtonLanguageState extends State<CommonButtonLanguage> {
  final String _viFlagsURL = 'assets/flags/vi.svg';
  final String _enFlagsURL = 'assets/flags/en.svg';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
        builder: (BuildContext context, LanguageState state){
            return TextButton(
                onPressed: widget.onPressed,
                child: _renderIconLanguageByState(state),
            );
        }
    );
  }

  SvgPicture _renderIconLanguageByState(LanguageState state){
      late SvgPicture renderIcon;
      switch (state.localization){
        case "vi":
          renderIcon = SvgPicture.asset(_viFlagsURL, width: 20, height: 20);
          break;

        case "en":
          renderIcon = SvgPicture.asset(_enFlagsURL, width: 20, height: 20);
          break;

        default:
          renderIcon = SvgPicture.asset(_enFlagsURL, width: 20, height: 20);
          break;

      }
      return renderIcon;
  }
}
