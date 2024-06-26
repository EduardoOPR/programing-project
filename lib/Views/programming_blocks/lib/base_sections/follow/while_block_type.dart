import 'package:progaming/Views/programming_blocks/lib/base_sections/number/input_targets/bool_input_target.dart';
import 'package:progaming/Views/programming_blocks/lib/base_sections/number/number_serializable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:progaming/Views/programming_blocks/lib/models/block_type.dart';
import 'package:progaming/Views/programming_blocks/lib/models/programming_block_model.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/creation_panel/section/creation_section_data.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/programming_blocks/controllers/execution_block_controller.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/programming_blocks/controllers/programming_block_controller.dart';

class WhileBlockModel extends ProgrammingBlockModel {
  WhileBlockModel() : super(type: WhileBlockType.typeName);
}

class WhileBlockType extends BlockType {
  static String typeName = 'WHILE';
  WhileBlockType({required CreationSectionData sectionData})
      : super(
          sectionData: sectionData,
          shape: ProgrammingBlockShape.scope,
          name: typeName,
        );

  @override
  Future<void> execute(ExecutionBlockController? executionController) async {
    var condition =
        NumberSerializable.fromMap(await executionController?.readInput(
      blockInputTargetKey: 'CONDITION',
    ));
    while (condition != 0) {
      for (final blockModel in executionController?.blockModel.blocks ?? []) {
        await executionController?.execute(blockModel: blockModel);
      }
      condition =
          NumberSerializable.fromMap(await executionController?.readInput(
        blockInputTargetKey: 'CONDITION',
      ));
    }
  }

  @override
  Widget nameBuilder(ProgrammingBlockController? blockController) =>
      const Text('Enquanto');

  @override
  Widget panelBuilder(ProgrammingBlockController? blockController) {
    return BoolInputTarget(
      blockInputTargetKey: 'CONDITION',
      blockColor: blockController?.blockColor,
    );
  }

  @override
  ProgrammingBlockModel? blockModel() => WhileBlockModel();
}
