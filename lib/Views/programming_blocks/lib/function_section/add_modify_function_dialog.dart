import 'dart:async';

import 'package:flutter/material.dart';
import 'package:progaming/Views/programming_blocks/lib/function_section/function_block_type.dart';
import 'package:progaming/Views/programming_blocks/lib/function_section/function_config_blockmodel.dart';
import 'package:progaming/Views/programming_blocks/lib/programming_blocks.dart';
import 'package:progaming/Views/programming_blocks/lib/programming_blocks_dependency.dart';
import 'package:progaming/Views/programming_blocks/lib/ui/add_modify_dialog/add_modify_dialog.dart';

class AddModifyFunctionDialog extends StatelessWidget {
  AddModifyFunctionDialog(
      {Key? key,
      this.functionConfigBlockModel,
      this.onRemove,
      required this.defaultFunctionSize})
      : super(key: key);

  late final DialogType _dialogType;
  final ConfigurationBlockModel? functionConfigBlockModel;
  final VoidCallback? onRemove;
  final double defaultFunctionSize;

  final ValueNotifier<bool> enableAddModifyNotifier = ValueNotifier(false);
  final ValueNotifier<String?> nameErrorNotifier = ValueNotifier(null);
  final ValueNotifier<String?> widthErrorNotifier = ValueNotifier(null);
  final ValueNotifier<String?> heightErrorNotifier = ValueNotifier(null);
  final Completer<FunctionConfigBlockModel?> addModifyCompleter = Completer();
  final Completer<int?> mondifyOnCanvasCompleter = Completer();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController widthController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  bool isValidForm() {
    return nameErrorNotifier.value == null &&
        widthErrorNotifier.value == null &&
        heightErrorNotifier.value == null &&
        nameController.text.isNotEmpty &&
        widthController.text.isNotEmpty &&
        heightController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    late String title;

    nameController.text = functionConfigBlockModel?.blockName ?? '';
    widthController.text =
        '${functionConfigBlockModel?.configArguments['widht'] ?? defaultFunctionSize}';
    heightController.text =
        '${functionConfigBlockModel?.configArguments['height'] ?? defaultFunctionSize}';
    final bool isMainCanvas =
        functionConfigBlockModel?.configArguments['function_uuid'] ==
            ProgrammingBlocksDependency.mainCanvasUuid;
    final bool drawMainScope =
        functionConfigBlockModel?.configArguments['draw_scope'] ?? true;

    if (isValidForm()) {
      enableAddModifyNotifier.value = true;
    }

    switch (_dialogType) {
      case DialogType.add:
        title = 'Adicionar função';
        break;
      case DialogType.modify:
        if (isMainCanvas && drawMainScope == false) {
          title = 'Modificar canvas';
        } else {
          title = 'Modificar função';
        }
        break;
      default:
    }

    return AlertDialog(
      title: Text(title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_dialogType != DialogType.modifyOnCanvas)
            ValueListenableBuilder<String?>(
                valueListenable: nameErrorNotifier,
                builder: (context, nameError, _) {
                  return TextField(
                    decoration: const InputDecoration(
                      label: Text(
                        'Nome',
                      ),
                    ),
                    controller: nameController,
                    onChanged: (value) {
                      if (value.isEmpty) {
                        nameErrorNotifier.value = 'Valor vazio não é aceito';
                      } else {
                        nameErrorNotifier.value = null;
                      }
                      enableAddModifyNotifier.value = isValidForm();
                    },
                  );
                }),
          ValueListenableBuilder<String?>(
              valueListenable: widthErrorNotifier,
              builder: (context, valueError, _) {
                return TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: const Text(
                      'Largura',
                    ),
                    errorText: valueError,
                  ),
                  controller: widthController,
                  onChanged: (value) {
                    if (value.isEmpty) {
                      widthErrorNotifier.value = 'Valor vazio não é aceito';
                    } else if (double.tryParse(value) == null) {
                      widthErrorNotifier.value =
                          'Apenas números são permitidos';
                    } else {
                      widthErrorNotifier.value = null;
                    }
                    enableAddModifyNotifier.value = isValidForm();
                  },
                );
              }),
          ValueListenableBuilder<String?>(
              valueListenable: heightErrorNotifier,
              builder: (context, valueError, _) {
                return TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: const Text(
                      'Altura',
                    ),
                    errorText: valueError,
                  ),
                  controller: heightController,
                  onChanged: (value) {
                    if (value.isEmpty) {
                      widthErrorNotifier.value = 'Valor vazio não é aceito';
                    } else if (double.tryParse(value) == null) {
                      widthErrorNotifier.value =
                          'Apenas números são permitidos';
                    } else {
                      widthErrorNotifier.value = null;
                    }
                    enableAddModifyNotifier.value = isValidForm();
                  },
                );
              }),
        ],
      ),
      actions: _dialogType == DialogType.add ||
              _dialogType == DialogType.modifyOnCanvas
          ? [
              ValueListenableBuilder<bool>(
                  valueListenable: enableAddModifyNotifier,
                  builder: (context, enable, _) {
                    return TextButton(
                      child: Text(
                          _dialogType == DialogType.add ? 'Adicionar' : 'Ok'),
                      onPressed: enable
                          ? () {
                              if (_dialogType == DialogType.add) {
                                final uuid = UniqueKey().toString();
                                addModifyCompleter.complete(
                                  FunctionConfigBlockModel(
                                    configArguments: {
                                      'function_uuid': uuid,
                                      'widht':
                                          double.parse(widthController.text),
                                      'height':
                                          double.parse(heightController.text),
                                    },
                                    typeName: FunctionBlockType.typeName,
                                    uuid: uuid,
                                    name: nameController.text,
                                  ),
                                );
                              }

                              Navigator.of(context).pop();
                            }
                          : null,
                    );
                  })
            ]
          : [
              ValueListenableBuilder<bool>(
                  valueListenable: enableAddModifyNotifier,
                  builder: (context, enable, _) {
                    return TextButton(
                      onPressed: enable
                          ? () {
                              addModifyCompleter.complete(
                                FunctionConfigBlockModel(
                                  configArguments: {
                                    'function_uuid':
                                        functionConfigBlockModel!.uuid,
                                    'widht': double.parse(widthController.text),
                                    'height':
                                        double.parse(heightController.text),
                                  },
                                  typeName: FunctionBlockType.typeName,
                                  uuid: functionConfigBlockModel!.uuid,
                                  name: nameController.text,
                                ),
                              );
                              Navigator.of(context).pop();
                            }
                          : null,
                      child: const Text(
                        'Modificar',
                      ),
                    );
                  }),
              if (functionConfigBlockModel?.uuid !=
                  ProgrammingBlocksDependency.mainCanvasUuid)
                TextButton(
                  onPressed: () {
                    if (onRemove != null) {
                      onRemove!();
                    }

                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Remover',
                  ),
                ),
            ],
    );
  }

  Future<FunctionConfigBlockModel?> showAddModify(
    BuildContext context, {
    required DialogType dialogType,
  }) async {
    _dialogType = dialogType;
    if (_dialogType != DialogType.modifyOnCanvas) {
      await showDialog(
        context: context,
        builder: (_) => this,
      );
      if (!addModifyCompleter.isCompleted) {
        addModifyCompleter.complete(null);
      }
      return addModifyCompleter.future;
    } else {
      return null;
    }
  }

  Future<int?> showModifyOnCanvas(BuildContext context) async {
    _dialogType = DialogType.modifyOnCanvas;
    await showDialog(
      context: context,
      builder: (_) => this,
    );
    if (!mondifyOnCanvasCompleter.isCompleted) {
      mondifyOnCanvasCompleter.complete(null);
    }
    return mondifyOnCanvasCompleter.future;
  }
}
