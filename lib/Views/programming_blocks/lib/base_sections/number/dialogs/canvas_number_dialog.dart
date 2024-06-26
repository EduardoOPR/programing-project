import 'package:progaming/Views/programming_blocks/lib/ui/variable_dialog/variable_dialog.dart';
import 'package:flutter/material.dart';

class CanvasNumberDialog extends VariableDialog<double> {
  CanvasNumberDialog({
    Key? key,
    required String defaultValue,
  }) : super(
            key: key,
            canvasDialog: true,
            defaultValue: defaultValue,
            actionLabel: 'Modificar',
            validator: (value) {
              if (double.tryParse(value) == null) {
                return 'Apenas números são permitidos';
              }
              return null;
            });

  @override
  void onAction(BuildContext context) {
    completer.complete(double.parse(valueController.text));
    Navigator.of(context).pop();
  }
}
