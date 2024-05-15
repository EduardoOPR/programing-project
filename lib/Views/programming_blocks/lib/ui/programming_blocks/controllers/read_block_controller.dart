import 'package:progaming/Views/programming_blocks/lib/programming_blocks.dart';
import 'package:progaming/Views/programming_blocks/lib/programming_blocks_dependency.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/programming_blocks/controllers/read_base_methods.dart';

class ReadBlockController extends ReadBaseMethods {
  ReadBlockController({
    required ProgrammingBlockModel blockModel,
    required this.configBlockModel,
    required ProgrammingBlocksDependency programmingBlocks,
  }) : super(
          blockModel: blockModel,
          programmingBlocks: programmingBlocks,
        );

  final ConfigurationBlockModel? configBlockModel;
}
