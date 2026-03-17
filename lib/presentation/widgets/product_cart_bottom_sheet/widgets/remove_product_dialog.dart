import 'package:avaliacao_des_sistemas/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class RemoveProductDialog extends StatelessWidget {
  const RemoveProductDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return AlertDialog(
      title: Text(l10n.removeProductTitle),
      content: Text(
        l10n.removeProductContent,
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(l10n.cancel),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: Text(
            l10n.remove,
            style: TextStyle(
              color: Theme.of(context).colorScheme.error,
            ),
          ),
        ),
      ],
    );
  }
}
