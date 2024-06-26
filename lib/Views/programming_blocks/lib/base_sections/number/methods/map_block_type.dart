import 'package:progaming/Views/programming_blocks/lib/base_sections/number/input_targets/number_input_target.dart';
import 'package:progaming/Views/programming_blocks/lib/base_sections/number/number_puzzle_piece.dart';
import 'package:progaming/Views/programming_blocks/lib/base_sections/number/number_serializable.dart';
import 'package:flutter/widgets.dart';
import 'package:progaming/Views/programming_blocks/lib/models/block_type.dart';
import 'package:progaming/Views/programming_blocks/lib/models/programming_block_model.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/creation_panel/section/creation_section_data.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/programming_blocks/controllers/execution_block_controller.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/programming_blocks/controllers/programming_block_controller.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/programming_blocks/controllers/read_block_controller.dart';

class MapBlockModel extends ProgrammingBlockModel {
  MapBlockModel() : super(returnType: 'NUMBER', type: MapBlockType.typeName);
}

class MapBlockType extends BlockType {
  static String typeName = 'MAP';
  MapBlockType({required CreationSectionData sectionData})
      : super(
          sectionData: sectionData,
          shape: ProgrammingBlockShape.withReturn,
          name: typeName,
          puzzlePieceData: const NumberPuzzlePiece(),
        );

  @override
  Future<void> execute(ExecutionBlockController? executionController) async {}

  @override
  Widget nameBuilder(ProgrammingBlockController? blockController) =>
      const SizedBox.shrink();

  @override
  Widget panelBuilder(ProgrammingBlockController? blockController) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Mapa'),
              NumberInputTarget(
                blockInputTargetKey: 'OPERATOR_MAP',
              ),
            ],
          ),
          const SizedBox(
            height: 4.0,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              SizedBox(
                width: 50,
                child: Text(
                  'Entrada\nmin',
                ),
              ),
              NumberInputTarget(
                blockInputTargetKey: 'OPERATOR_INMIN',
              ),
              SizedBox(
                width: 50,
                child: Text(
                  'Entrada\nmax',
                ),
              ),
              NumberInputTarget(
                blockInputTargetKey: 'OPERATOR_INMAX',
              ),
            ],
          ),
          const SizedBox(
            height: 4.0,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              SizedBox(width: 35, child: Text('Saída\nmin')),
              NumberInputTarget(
                blockInputTargetKey: 'OPERATOR_OUTMIN',
              ),
              SizedBox(width: 35, child: Text('Saída\nmax')),
              NumberInputTarget(
                blockInputTargetKey: 'OPERATOR_OUTMAX',
              ),
            ],
          ),
        ],
      );

  @override
  Future readData(ReadBlockController? readBlockController) async {
    final double map = NumberSerializable.fromMap(await readBlockController!
        .readInput(blockInputTargetKey: 'OPERATOR_MAP'));
    final double inMin = NumberSerializable.fromMap(await readBlockController
        .readInput(blockInputTargetKey: 'OPERATOR_INMIN'));
    final double inMax = NumberSerializable.fromMap(await readBlockController
        .readInput(blockInputTargetKey: 'OPERATOR_INMAX'));
    final double outMin = NumberSerializable.fromMap(await readBlockController
        .readInput(blockInputTargetKey: 'OPERATOR_OUTMIN'));
    final double outMax = NumberSerializable.fromMap(await readBlockController
        .readInput(blockInputTargetKey: 'OPERATOR_OUTMAX'));
    return NumberSerializable.toMap(
        (map - inMin) * (outMax - outMin) / (inMax - inMin) + outMin);
  }

  @override
  ProgrammingBlockModel? blockModel() {
    return MapBlockModel();
  }
}
