import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class CommonLanguageListTile extends StatelessWidget {
  static const String _viFlagsURL = 'assets/flags/vi.svg';
  static const String _enFlagsURL = 'assets/flags/en.svg';

  final LanguageLocalizationEnum localization;

  const CommonLanguageListTile({Key? key, required this.localization}) : super(key: key);

  @override
  ListTile build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;


    return _renderListTileLanguageByState(localization, appLocalizations);
  }

  ListTile _renderListTileLanguageByState(LanguageLocalizationEnum localization, AppLocalizations appLocalizations){
    late ListTile renderListTile;
    switch (localization){
      case LanguageLocalizationEnum.vi:
        renderListTile = ListTile(
          leading: SvgPicture.asset(_viFlagsURL, width: 20, height: 20),
          title: Text(appLocalizations.vietnamese),
          onTap: (){},
        );
        break;

      case LanguageLocalizationEnum.en:
        renderListTile = ListTile(
          leading: SvgPicture.asset(_enFlagsURL, width: 20, height: 20),
          title: Text(appLocalizations.english),
          onTap: (){},
        );
        break;

      default:
        renderListTile = ListTile(
          leading: SvgPicture.asset(_enFlagsURL, width: 20, height: 20),
          title: Text(appLocalizations.vietnamese),
          onTap: (){},
        );
        break;

    }
    return renderListTile;
  }
}

enum LanguageLocalizationEnum{
  vi,
  en
}