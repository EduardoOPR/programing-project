import 'package:progaming/Views/programming_blocks/lib/programming_blocks.dart';
import 'package:flutter/material.dart';

class ModifyNumberDialog extends VariableDialog<ConfigurationBlockModel> {
  ModifyNumberDialog({
    Key? key,
    required ConfigurationBlockModel? numberConfigBlockModel,
    required this.onRemove,
  }) : super(
          key: key,
          actionLabel: 'Modificar',
          enableRemove: true,
          canvasDialog: false,
          validator: (value) {
            if (double.tryParse(value) == null) {
              return 'Apenas números são permitidos';
            }
            return null;
          },
          configBlockModel: numberConfigBlockModel,
        );

  final VoidCallback onRemove;

  @override
  void removeCallback(context) {
    onRemove();
  }

  @override
  void onAction(BuildContext context) {
    configBlockModel?.configArguments = {
      'value': double.parse(valueController.text),
    };
    configBlockModel?.blockName = nameController.text;
    completer.complete(configBlockModel);
    Navigator.of(context).pop();
  }
}
