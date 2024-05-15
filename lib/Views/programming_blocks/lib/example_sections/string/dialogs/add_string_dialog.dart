import 'package:progaming/Views/programming_blocks/lib/example_sections/string/instances/string_block_type.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/variable_dialog/variable_dialog.dart';
import 'package:flutter/material.dart';

class AddStringDialog extends VariableDialog<StringConfigBlockModel> {
  AddStringDialog({
    Key? key,
  }) : super(
            key: key,
            actionLabel: 'Adicionar',
            canvasDialog: false,
            validator: (value) {
              return null;
            });

  @override
  void onAction(BuildContext context) {
    final uuid = UniqueKey().toString();
    completer.complete(StringConfigBlockModel(
      configArguments: {
        'value': valueController.text,
      },
      typeName: StringBlockType.typeName,
      uuid: uuid,
      name: nameController.text,
    ));

    Navigator.of(context).pop();
  }
}
