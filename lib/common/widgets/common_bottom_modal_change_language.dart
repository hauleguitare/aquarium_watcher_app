import 'package:aquarium_watcher_app/common/widgets/common_language_list_tile.dart';
import 'package:aquarium_watcher_app/core/languages/language_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CommonBottomModalChangeLanguage extends StatefulWidget {
  const CommonBottomModalChangeLanguage({Key? key}) : super(key: key);

  @override
  State<CommonBottomModalChangeLanguage> createState() => _CommonBottomModalChangeLanguageState();
}

class _CommonBottomModalChangeLanguageState extends State<CommonBottomModalChangeLanguage> {
  late LanguageBloc _languageBloc;


  @override
  void initState() {
    _languageBloc = BlocProvider.of<LanguageBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white12,
      height: MediaQuery.of(context).size.height / 4,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CommonLanguageListTile(localization: LanguageLocalizationEnum.vi),
          CommonLanguageListTile(localization: LanguageLocalizationEnum.en),
        ],
      ),
    );
  }

  _changeLanguage(){

  }
}
