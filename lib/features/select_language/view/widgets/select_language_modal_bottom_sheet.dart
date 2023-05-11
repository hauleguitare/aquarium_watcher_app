import 'package:aquarium_watcher_app/core/languages/language_bloc.dart';
import 'package:aquarium_watcher_app/core/languages/language_state.dart';
import 'package:aquarium_watcher_app/features/select_language/controllers/language_controller.dart';
import 'package:aquarium_watcher_app/features/select_language/view/widgets/language_list_tite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SelectLanguageModalBottomSheet extends StatefulWidget {
  final LanguageController controller;

  const SelectLanguageModalBottomSheet({
    Key? key,
    required this.controller
  }) : super(key: key);

  @override
  State<SelectLanguageModalBottomSheet> createState() => _SelectLanguageModalBottomSheetState();
}

class _SelectLanguageModalBottomSheetState extends State<SelectLanguageModalBottomSheet> {
  late LanguageBloc _languageBloc;


  @override
  void initState() {
    _languageBloc = BlocProvider.of<LanguageBloc>(context);

    widget.controller.addListener(() {
      _languageBloc.add(widget.controller.event);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
      builder: (BuildContext context, LanguageState state){
        return Container(
          color: Colors.white12,
          height: MediaQuery.of(context).size.height / 4,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              LanguageListTile(
                  localization: "vi",
                  enable: state.localization == "vi",
                  onLanguageStateChange: (state) => widget.controller.onChangeState(state),

              ),
              LanguageListTile(
                  localization: "en",
                enable: state.localization == "en",
                  onLanguageStateChange: (state) => widget.controller.onChangeState(state),
              ),
            ],
          ),
        );
      }
    );
  }
}
