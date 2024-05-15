import 'package:progaming/Views/programming_blocks/lib/ui/variable_dialog/variable_dialog.dart';
import 'package:progaming/Views/programming_blocks/lib/base_sections/number/instances/number_block_type.dart';
import 'package:flutter/material.dart';

class AddNumberDialog extends VariableDialog<NumberConfigBlockModel> {
  AddNumberDialog({
    Key? key,
  }) : super(
            key: key,
            actionLabel: 'Add',
            canvasDialog: false,
            validator: (value) {
              if (double.tryParse(value) == null) {
                return 'Only numbers allowed';
              }
              return null;
            });

  @override
  void onAction(BuildContext context) {
    final uuid = UniqueKey().toString();
    completer.complete(NumberConfigBlockModel(
      configArguments: {
        'value': double.parse(valueController.text),
      },
      typeName: NumberBlockType.typeName,
      uuid: uuid,
      name: nameController.text,
    ));

    Navigator.of(context).pop();
  }
}
