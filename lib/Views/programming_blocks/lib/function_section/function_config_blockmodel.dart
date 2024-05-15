import 'dart:ui';

import 'package:progaming/Views/programming_blocks/lib/function_section/function_block_model.dart';
import 'package:progaming/Views/programming_blocks/lib/function_section/function_scope_block_model.dart';
import 'package:progaming/Views/programming_blocks/lib/programming_blocks.dart';

class FunctionConfigBlockModel extends ConfigurationBlockModel {
  FunctionConfigBlockModel({
    required Map<String, dynamic> configArguments,
    required String typeName,
    required String uuid,
    required String name,
  }) : super(
          configArguments: configArguments,
          typeName: typeName,
          uuid: uuid,
          blockName: name,
          blockModel: FunctionBlockModel(
            configurationUuid: uuid,
            name: name,
          ),
        );

  @override
  ConfigurationBlockModel copyWith(
      {Map<String, dynamic>? configArguments, String? name}) {
    return FunctionConfigBlockModel(
      configArguments: configArguments ?? this.configArguments,
      typeName: typeName,
      uuid: uuid,
      name: name ?? blockName,
    );
  }

  ProgrammingBlocksDependencyCanvasModel get toCanvasModel {
    final canvasModel = ProgrammingBlocksDependencyCanvasModel(
      title: blockName,
      programmingBlocks: [],
      functionScopeBlockModel: FunctionScopeBlockModel(
        blocks: [],
        configurationUuid: uuid,
      ),
      size: Size(
        configArguments['widht'],
        configArguments['height'],
      ),
      functionUuid: uuid,
    );
    return canvasModel;
  }
}
