import 'package:flutter/material.dart';

import 'package:progaming/Views/programming_blocks/lib/ui/variable_dialog/variable_dialog.dart';

class CanvasStringDialog extends VariableDialog {
  CanvasStringDialog({
    Key? key,
    required String defaultValue,
  }) : super(
            key: key,
            canvasDialog: true,
            defaultValue: defaultValue,
            actionLabel: 'Modificar',
            validator: (value) {
              return null;
            });

  @override
  void onAction(BuildContext context) {
    completer.complete(valueController.text);
    Navigator.of(context).pop();
  }
}
