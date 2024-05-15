import 'package:flutter/material.dart';
import 'package:progaming/Views/programming_blocks/lib/models/puzzle_piece_data.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/puzzle_piece/puzzle_polygon.dart';

class PuzzleOut extends StatelessWidget {
  const PuzzleOut({
    Key? key,
    required this.color,
    required this.puzzlePieceData,
  }) : super(key: key);

  final Color color;

  final PuzzlePieceData puzzlePieceData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: puzzlePieceData.topPadding,
      ),
      child: PuzzlePolygon(
        sides: puzzlePieceData.sides,
        size: puzzlePieceData.size,
        leftPadding: 0,
        color: color,
      ),
    );
  }
}
