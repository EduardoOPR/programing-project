import 'package:progaming/Views/programming_blocks/lib/base_sections/number/input_targets/number_input_target.dart';
import 'package:progaming/Views/programming_blocks/lib/base_sections/number/number_serializable.dart';
import 'package:flutter/material.dart';
import 'package:progaming/Views/programming_blocks/lib/models/block_type.dart';
import 'package:progaming/Views/programming_blocks/lib/models/programming_block_model.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/creation_panel/section/creation_section_data.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/programming_blocks/controllers/execution_block_controller.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/programming_blocks/controllers/programming_block_controller.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/variable_selector/variable_selector.dart';

class SetNumberBlockModel extends ProgrammingBlockModel {
  SetNumberBlockModel()
      : super(
          type: SetNumberBlockType.typeName,
        );
}

class SetNumberBlockType extends BlockType {
  static String typeName = 'SET_NUMBER';
  SetNumberBlockType({
    required CreationSectionData sectionData,
  }) : super(
            sectionData: sectionData,
            shape: ProgrammingBlockShape.simple,
            name: typeName);

  @override
  Future<void> execute(ExecutionBlockController? executionController) async {
    await executionController?.updateSelectedVariable(
      variableType: 'NUMBER',
      configArguments: {
        'value': NumberSerializable.fromMap(
          await executionController.readInput(
            blockInputTargetKey: 'VALUE',
          ),
        )
      },
    );
  }

  @override
  Widget nameBuilder(ProgrammingBlockController? blockController) =>
      const Text('');

  @override
  Widget panelBuilder(ProgrammingBlockController? blockController) => Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            'Defina',
          ),
          VariableSelector(
            textColor: Colors.white,
            variableType: 'NUMBER',
          ),
          Text(
            'como',
          ),
          NumberInputTarget(
            blockInputTargetKey: 'VALUE',
          )
        ],
      );

  @override
  ProgrammingBlockModel? blockModel() => SetNumberBlockModel();
}
