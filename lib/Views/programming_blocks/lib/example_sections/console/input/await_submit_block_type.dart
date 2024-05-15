import 'package:progaming/Views/programming_blocks/lib/example_sections/string/string_puzzle_piece.dart';

import 'package:flutter/widgets.dart';
import 'package:flutter_console_widget/flutter_console.dart';
import 'package:progaming/Views/programming_blocks/lib/models/block_type.dart';

import 'package:progaming/Views/programming_blocks/lib/ui/creation_panel/section/creation_section_data.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/programming_blocks/controllers/execution_block_controller.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/programming_blocks/controllers/programming_block_controller.dart';

import 'package:progaming/Views/programming_blocks/lib/programming_blocks.dart';

class AwaitSubmitBlockModel extends ProgrammingBlockModel {
  AwaitSubmitBlockModel()
      : super(
          type: AwaitSubmitBlockType.typeName,
        );
}

class AwaitSubmitBlockType extends BlockType {
  static String typeName = 'AWAIT_SUBMIT';
  AwaitSubmitBlockType({
    required CreationSectionData sectionData,
    required this.consoleController,
  }) : super(
          sectionData: sectionData,
          shape: ProgrammingBlockShape.simple,
          name: typeName,
          puzzlePieceData: const StringPuzzlePiece(),
        );

  final FlutterConsoleController consoleController;

  @override
  Future<void> execute(ExecutionBlockController? executionController) async {
    await consoleController.scan();
  }

  @override
  Widget nameBuilder(ProgrammingBlockController? blockController) =>
      const Text('Programação em blocos');

  @override
  Widget panelBuilder(ProgrammingBlockController? blockController) =>
      const SizedBox.shrink();

  @override
  ProgrammingBlockModel? blockModel() {
    return AwaitSubmitBlockModel();
  }
}
