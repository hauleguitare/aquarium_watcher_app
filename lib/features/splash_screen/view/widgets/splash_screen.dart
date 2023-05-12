import 'package:aquarium_watcher_app/common/constant/asset_url.dart';
import 'package:aquarium_watcher_app/common/constant/colors.dart';
import 'package:aquarium_watcher_app/common/constant/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _splashImageUrl = assetURL["splashScreenWaitingLogo"]!;

  @override
  Widget build(BuildContext context) {
    final _applocalizations = AppLocalizations.of(context)!;

    return WillPopScope(
      onWillPop: () async{
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  _splashImageUrl,
                  width: 250,
                  height: 250,
                ),
                Text(
                    _applocalizations.appName,
                    textAlign: TextAlign.center,
                    style: h0(context: context, fontWeight: '700', color: bdazzledBlue)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
