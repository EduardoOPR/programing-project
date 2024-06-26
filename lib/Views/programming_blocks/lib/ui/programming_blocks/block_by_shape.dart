import 'package:flutter/material.dart';
import 'package:progaming/Views/programming_blocks/lib/models/block_type.dart';
import 'package:progaming/Views/programming_blocks/lib/models/puzzle_piece_data.dart';
import 'package:progaming/Views/programming_blocks/lib/programming_blocks.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/programming_blocks/programming_block.dart';

class BlockByShape {
  static Widget build({
    required ProgrammingBlockModel? blockModel,
    required Widget Function(ProgrammingBlockModel? blockModel) nameBuilder,
    required Widget Function() panelBuilder,
    required Color color,
    required ProgrammingBlockShape shape,
    required bool fromCreationSection,
    required PuzzlePieceData puzzlePieceData,
  }) {
    switch (shape) {
      case ProgrammingBlockShape.simple:
        return ProgrammingBlock(
          blockModel: blockModel,
          color: color,
          builder: () => SimpleBlock(
            blockModel: blockModel,
            nameBuilder: nameBuilder,
            panelBuilder: () => panelBuilder(),
            color: color,
          ),
        );
      case ProgrammingBlockShape.withReturn:
        return ProgrammingBlock(
          blockModel: blockModel,
          color: color,
          builder: () => ReturnBlock(
            puzzlePieceData: puzzlePieceData,
            blockModel: blockModel,
            nameBuilder: nameBuilder,
            panelBuilder: () => panelBuilder(),
            color: color,
            fromCreationSection: fromCreationSection,
          ),
        );
      case ProgrammingBlockShape.scope:
        return ProgrammingBlock(
          blockModel: blockModel,
          color: color,
          builder: () => ScopeBlock(
            blockModel: blockModel,
            nameBuilder: nameBuilder,
            panelBuilder: () => panelBuilder(),
            color: color,
            fromCreationSection: fromCreationSection,
          ),
        );
    }
  }
}
