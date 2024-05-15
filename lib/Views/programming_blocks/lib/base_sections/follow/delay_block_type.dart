import 'package:progaming/Views/programming_blocks/lib/base_sections/number/input_targets/number_input_target.dart';
import 'package:progaming/Views/programming_blocks/lib/base_sections/number/number_serializable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:progaming/Views/programming_blocks/lib/models/block_type.dart';
import 'package:progaming/Views/programming_blocks/lib/models/programming_block_model.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/creation_panel/section/creation_section_data.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/programming_blocks/controllers/execution_block_controller.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/programming_blocks/controllers/programming_block_controller.dart';

class DelayBlockModel extends ProgrammingBlockModel {
  DelayBlockModel()
      : super(
          type: DelayBlockType.typeName,
        );
}

class DelayBlockType extends BlockType {
  static String typeName = 'DELAY';
  DelayBlockType({required CreationSectionData sectionData})
      : super(
          sectionData: sectionData,
          shape: ProgrammingBlockShape.simple,
          name: typeName,
        );

  @override
  Future<void> execute(ExecutionBlockController? executionController) async {
    await Future.delayed(
      Duration(
          milliseconds: NumberSerializable.fromMap(
        await executionController?.readInput(
          blockInputTargetKey: 'MILLIS',
        ),
      ).toInt()),
    );
  }

  @override
  Widget nameBuilder(ProgrammingBlockController? blockController) =>
      const Text('Atraso');

  @override
  Widget panelBuilder(ProgrammingBlockController? blockController) {
    return Row(
      children: const [
        NumberInputTarget(
          blockInputTargetKey: 'MILLIS',
          defaultData: {'value': 1000},
        ),
        Text(' milisegundos'),
      ],
    );
  }

  @override
  ProgrammingBlockModel? blockModel() => DelayBlockModel();
}
