import 'package:aquarium_watcher_app/common/constant/asset_url.dart';
import 'package:aquarium_watcher_app/core/languages/language_bloc.dart';
import 'package:aquarium_watcher_app/core/languages/language_state.dart';
import 'package:aquarium_watcher_app/features/select_language/controllers/language_controller.dart';
import 'package:aquarium_watcher_app/features/select_language/view/widgets/select_language_modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectLanguageButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final LanguageController languageController;

  const SelectLanguageButton({
    Key? key,
    this.onPressed,
    required this.languageController
  }) : super(key: key);

  @override
  State<SelectLanguageButton> createState() => _SelectLanguageButtonState();
}

class _SelectLanguageButtonState extends State<SelectLanguageButton> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
        builder: (BuildContext context, LanguageState state){
          return TextButton(
            onPressed: () => _onPressedLanguage(context, widget.languageController),
            child: _renderIconLanguageByState(state),
          );
        }
    );
  }

  SvgPicture _renderIconLanguageByState(LanguageState state){
    late SvgPicture renderIcon;
    switch (state.localization){
      case "vi":
        renderIcon = SvgPicture.asset(assetURL["viFlag"]!, width: 20, height: 20);
        break;

      case "en":
        renderIcon = SvgPicture.asset(assetURL["enFlag"]!, width: 20, height: 20);
        break;

      default:
        renderIcon = SvgPicture.asset(assetURL["enFlag"]!, width: 20, height: 20);
        break;

    }
    return renderIcon;
  }

  void _onPressedLanguage(BuildContext context, LanguageController controller) {
      controller.showModal(context);
  }
}
