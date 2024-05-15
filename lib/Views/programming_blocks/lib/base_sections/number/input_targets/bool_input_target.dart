import 'package:progaming/Views/programming_blocks/lib/base_sections/number/dialogs/canvas_bool_dialog.dart';
import 'package:progaming/Views/programming_blocks/lib/base_sections/number/number_puzzle_piece.dart';
import 'package:progaming/Views/programming_blocks/lib/base_sections/number/number_serializable.dart';
import 'package:flutter/material.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/block_input/block_input_target.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/block_input/block_input_target_controller.dart';

class BoolInputTarget extends BlockInputTarget {
  const BoolInputTarget({
    Key? key,
    required String blockInputTargetKey,
    required this.blockColor,
  }) : super(
          key: key,
          blockInputTargetKey: blockInputTargetKey,
          acceptedType: 'NUMBER',
          defaultData: const {
            'value': 1,
          },
          puzzlePieceData: const NumberPuzzlePiece(),
        );

  final Color? blockColor;

  @override
  Widget valueOverview(Map<String, dynamic>? value) {
    return Text(
        '${NumberSerializable.fromMap(value) == 0 ? 'falso' : 'Verdadeiro'}');
  }

  @override
  Future<void> onValueOverviewTap(
      BuildContext context,
      Map<String, dynamic>? value,
      BlockInputTargetController controller) async {
    final _value = await CanvasBoolDialog(
      blockColor: blockColor ?? Colors.black,
      defaultValue: (NumberSerializable.fromMap(value)).toString(),
    ).showModifyOnCanvas(context);
    if (_value != null) {
      controller.updateBlockInputValue(
        value: NumberSerializable.toMap(_value),
      );
    }
  }
}
