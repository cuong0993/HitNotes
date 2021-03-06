import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PauseDialog extends StatelessWidget {
  final Function() _onRestart;

  const PauseDialog(this._onRestart);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              child: Text(AppLocalizations.of(context)!.txt_button_quit),
            ),
            ElevatedButton(
              onPressed: () {
                _onRestart();
                Navigator.of(context).pop();
              },
              child: Text(AppLocalizations.of(context)!.txt_button_restart),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child:
                  Text(AppLocalizations.of(context)!.txt_game_button_continue),
            )
          ],
        ),
      ),
    );
  }
}
