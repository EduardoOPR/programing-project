// https://github.com/semakers/programming_blocks/blob/main/lib/ui/canvas/canvas.dart

//As widgets inferiores tão localizadas na creation_panel.dart, no rightAction e leftAction, também tem uma pré configuração para center, então tentar
//copiar um deles e adaptar para ficar no meio

import 'dart:convert';

//import 'package:progaming/example_algorithms/calculator_algorithm.dart';
import 'package:progaming/example_sections/console/console_section.dart';
import 'package:progaming/example_sections/string/strings_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_console_widget/flutter_console.dart';
import 'package:programming_blocks/programming_blocks.dart';

class ProgrammingBlocksView extends StatefulWidget {
  const ProgrammingBlocksView({super.key});

  @override
  State<ProgrammingBlocksView> createState() => _ProgrammingBlocksViewState();
}

class _ProgrammingBlocksViewState extends State<ProgrammingBlocksView> {
  @override
  Widget build(BuildContext context) {
    //Pegando a altura sem usar o mediaquery pq estava utilizando o contexto causando erro na widget zoom
    final double physicalHeight = WidgetsBinding
        .instance.platformDispatcher.views.first.physicalSize.height;
    final double devicePixelRatio =
        WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio;
    final double height = physicalHeight / devicePixelRatio;
    //double height = 253.0;

    //Pegando a largura da mesma forma que a altura
    final double physicalWidth = WidgetsBinding
        .instance.platformDispatcher.views.first.physicalSize.width;
    final double width = physicalWidth / devicePixelRatio;
    //double width = 392.0;

    final FlutterConsoleController consoleController =
        FlutterConsoleController();
    consoleController.hide();
    /*
    //AQUI
    ProgrammingBlocksProjectModel? projectModel;
    projectModel = ProgrammingBlocksProjectModel.fromJson(
      jsonDecode(
        CalculatorAlgorithm.serializedCode,
      ),
    );
*/
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ProgrammingBlocks(
                //projectModel: projectModel, //AQUI
                onProjectChange: (projectModel) async {
                  await Clipboard.setData(
                      ClipboardData(text: jsonEncode(projectModel.toJson())));
                },
                onChangeRunningState: (runningState) async {
                  switch (runningState) {
                    case RunningState.running:
                      consoleController.show();
                      break;
                    case RunningState.stoped:
                      consoleController.clear();
                      consoleController.hide();

                      break;
                  }
                },
                enableFunctions: true,
                sections: [
                  ConsoleSection(
                    consoleController: consoleController,
                  ),
                  FollowSection(),
                  LogicSection(),
                  NumbersSection(),
                  StringsSection(),
                ],
              ),
            ),
            SingleChildScrollView(
              child: FlutterConsole(
                controller: consoleController,
                width: width,
                height: height / 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
