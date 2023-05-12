import 'package:aquarium_watcher_app/common/routes/route.dart';
import 'package:aquarium_watcher_app/core/languages/language_bloc.dart';
import 'package:aquarium_watcher_app/core/languages/language_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class StartupWidget extends StatefulWidget {
  const StartupWidget({Key? key}) : super(key: key);

  @override
  State<StartupWidget> createState() => _StartupWidgetState();
}

class _StartupWidgetState extends State<StartupWidget> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (BuildContext context) => LanguageBloc(const ChangeLanguageState("en"))
        )
      ],
      child: BlocBuilder<LanguageBloc, LanguageState>(
          builder: (BuildContext context, LanguageState state){
            return MaterialApp(
              locale: Locale(state.localization),
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              // localizationsDelegates: const [
              //   AppLocalizations.delegate, // Add this line
              //   GlobalMaterialLocalizations.delegate,
              //   GlobalWidgetsLocalizations.delegate,
              //   GlobalCupertinoLocalizations.delegate,
              // ],
              routes: ApplicationRoutes,
              initialRoute: "/splash",
            );
          }
      ),
    );
  }
}
