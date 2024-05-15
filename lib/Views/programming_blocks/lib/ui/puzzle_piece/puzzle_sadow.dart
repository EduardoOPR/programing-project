import 'package:flutter/material.dart';
import 'package:progaming/Views/programming_blocks/lib/models/puzzle_piece_data.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/puzzle_piece/puzzle_polygon.dart';

class PuzzleShadow extends StatelessWidget {
  const PuzzleShadow({
    Key? key,
    required this.puzzlePieceData,
    required this.color,
  }) : super(key: key);

  final PuzzlePieceData puzzlePieceData;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: puzzlePieceData.topPadding),
      child: PuzzlePolygon(
        sides: puzzlePieceData.sides,
        size: puzzlePieceData.size + 2,
        color: color,
        leftPadding: puzzlePieceData.sides <= 3
            ? 0
            : puzzlePieceData.sides == 4
                ? 0.5
                : 1,
        withGradient: true,
      ),
    );
  }
}
