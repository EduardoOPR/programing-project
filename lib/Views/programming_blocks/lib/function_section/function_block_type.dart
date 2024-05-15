import 'package:flutter/widgets.dart';
import 'package:progaming/Views/programming_blocks/lib/models/block_type.dart';
import 'package:progaming/Views/programming_blocks/lib/models/programming_block_model.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/creation_panel/section/creation_section_data.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/programming_blocks/controllers/execution_block_controller.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/programming_blocks/controllers/programming_block_controller.dart';

class FunctionBlockType extends BlockType {
  static String typeName = 'FUNCTION';
  FunctionBlockType({required CreationSectionData sectionData})
      : super(
          sectionData: sectionData,
          shape: ProgrammingBlockShape.simple,
          name: typeName,
        );

  @override
  Future<void> execute(ExecutionBlockController? executionController) async {
    for (final blockModel in executionController?.blockModel.blocks ?? []) {
      await executionController?.execute(blockModel: blockModel);
    }
  }

  @override
  Widget nameBuilder(ProgrammingBlockController? blockController) =>
      Text(blockController?.blockModel.name ?? '');

  @override
  Widget panelBuilder(ProgrammingBlockController? blockController) =>
      const SizedBox.shrink();

  @override
  ProgrammingBlockModel? blockModel() => null;
}
