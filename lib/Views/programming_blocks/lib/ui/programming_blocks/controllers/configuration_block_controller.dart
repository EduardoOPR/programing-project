import 'package:progaming/Views/programming_blocks/lib/programming_blocks.dart';
import 'package:progaming/Views/programming_blocks/lib/programming_blocks_dependency.dart';

class ConfigurationBlockController {
  ConfigurationBlockController(
      {required ProgrammingBlocksDependency programmingBlocks,
      required ConfigurationBlockModel configurationBlockModel})
      : _programmingBlocks = programmingBlocks,
        _configurationBlockModel = configurationBlockModel;

  final ProgrammingBlocksDependency _programmingBlocks;
  final ConfigurationBlockModel _configurationBlockModel;

  ConfigurationBlockModel get configurationBlockModel =>
      _configurationBlockModel;

  void removeInstance() {
    _programmingBlocks.removeConfigurationBlockModel(
        configurationBlockModel: configurationBlockModel);
  }

  void updateInstance({
    required ConfigurationBlockModel? configurationBlockModel,
  }) {
    if (configurationBlockModel != null) {
      _programmingBlocks.updateConfigurationBlockModel(
          configurationBlockModel: configurationBlockModel);
    }
  }
}
