import 'package:aquarium_watcher_app/core/languages/language_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class LanguageListTile extends StatelessWidget {
  static const String _viFlagsURL = 'assets/flags/vi.svg';
  static const String _enFlagsURL = 'assets/flags/en.svg';

  final String localization;
  final void Function(LanguageState) onLanguageStateChange;
  final bool enable;

  const LanguageListTile({
    Key? key,
    required this.localization,
    required this.onLanguageStateChange,
    required this.enable
  }) : super(key: key);

  @override
  ListTile build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;


    return _renderListTileLanguageByState(localization, appLocalizations);
  }

  ListTile _renderListTileLanguageByState(String localization, AppLocalizations appLocalizations){
    late ListTile renderListTile;
    switch (localization){
      case "vi":
        renderListTile = ListTile(
          enabled: !enable,
          leading: SvgPicture.asset(_viFlagsURL, width: 20, height: 20),
          title: Text(appLocalizations.vietnamese),
          onTap: (){
            onLanguageStateChange(const ChangeLanguageState("vi"));
          },
        );
        break;

      case "en":
        renderListTile = ListTile(
          enabled: !enable,
          leading: SvgPicture.asset(_enFlagsURL, width: 20, height: 20),
          title: Text(appLocalizations.english),
          onTap: (){
            onLanguageStateChange(const ChangeLanguageState("en"));
          },
        );
        break;

      default:
        renderListTile = ListTile(
          enabled: enable,
          leading: SvgPicture.asset(_enFlagsURL, width: 20, height: 20),
          title: Text(appLocalizations.vietnamese),
          onTap: (){},
        );
        break;

    }
    return renderListTile;
  }
}
