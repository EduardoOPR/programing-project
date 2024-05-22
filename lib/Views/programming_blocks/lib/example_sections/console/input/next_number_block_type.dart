import 'package:progaming/Views/widgets/flutter_console_widget/flutter_console.dart';
import 'package:progaming/Views/programming_blocks/lib/base_sections/number/number_puzzle_piece.dart';
import 'package:progaming/Views/programming_blocks/lib/base_sections/number/number_serializable.dart';
import 'package:flutter/widgets.dart';
import 'package:progaming/Views/programming_blocks/lib/models/block_type.dart';
import 'package:progaming/Views/programming_blocks/lib/programming_blocks.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/creation_panel/section/creation_section_data.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/programming_blocks/controllers/execution_block_controller.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/programming_blocks/controllers/programming_block_controller.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/programming_blocks/controllers/read_block_controller.dart';

class NextNumberBlockModel extends ProgrammingBlockModel {
  NextNumberBlockModel()
      : super(
          returnType: 'NUMBER',
          type: NextNumberBlockType.typeName,
        );
}

class NextNumberBlockType extends BlockType {
  static String typeName = 'NEXT_NUMBER';
  NextNumberBlockType({
    required CreationSectionData sectionData,
    required this.consoleController,
  }) : super(
          sectionData: sectionData,
          shape: ProgrammingBlockShape.withReturn,
          name: typeName,
          puzzlePieceData: const NumberPuzzlePiece(),
        );

  final FlutterConsoleController consoleController;

  @override
  Future<void> execute(ExecutionBlockController? executionController) async {}

  @override
  Widget nameBuilder(ProgrammingBlockController? blockController) =>
      const Text('Próximo número');

  @override
  Widget panelBuilder(ProgrammingBlockController? blockController) =>
      const SizedBox.shrink();

  @override
  Future readData(ReadBlockController? readBlockController) async {
    consoleController.focusNode.requestFocus();
    final value = await consoleController.scan(
      keyboardType: TextInputType.number,
    );
    consoleController.print(
      message: value,
      endline: false,
    );
    return NumberSerializable.toMap(double.tryParse(value) ?? -1);
  }

  @override
  ProgrammingBlockModel? blockModel() {
    return NextNumberBlockModel();
  }
}
