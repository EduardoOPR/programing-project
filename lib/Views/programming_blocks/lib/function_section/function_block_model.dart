import 'dart:ui';

import 'package:progaming/Views/programming_blocks/lib/function_section/function_block_type.dart';
import 'package:progaming/Views/programming_blocks/lib/programming_blocks.dart';

class FunctionBlockModel extends ProgrammingBlockModel {
  FunctionBlockModel({
    required String configurationUuid,
    required String name,
  }) : super(
          selectors: [],
          blocks: [],
          configurationUuid: configurationUuid,
          inputs: [],
          name: name,
          position: Offset.zero,
          type: FunctionBlockType.typeName,
        );
}
