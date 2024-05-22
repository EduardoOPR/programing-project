// https://github.com/semakers/programming_blocks/blob/main/lib/ui/canvas/canvas.dart
//TODO Essa View foi passa toda para o ExerciseScreenInfo, não necessitando mais estar aqui

import 'dart:async';
import 'dart:convert';

import 'package:progaming/Views/widgets/ExerciseAppBar.dart';
import 'package:progaming/Views/widgets/ExerciseColoredButton.dart';
import 'package:progaming/controller/TimerControler.dart';
import 'package:progaming/example_algorithms/calculator_algorithm.dart';
import 'package:progaming/Views/programming_blocks/lib/programming_blocks.dart';
import 'package:progaming/Views/programming_blocks/lib/example_sections/console/console_section.dart';
import 'package:progaming/Views/programming_blocks/lib/example_sections/string/strings_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:progaming/Views/widgets/flutter_console_widget/flutter_console.dart';
import 'package:provider/provider.dart';
//import 'package:progaming/Views/programming_blocks/programming_blocks.dart';

class ProgrammingBlocksView extends StatefulWidget {
  const ProgrammingBlocksView({
    super.key,
  });

  @override
  State<ProgrammingBlocksView> createState() => _ProgrammingBlocksViewState();
}

class _ProgrammingBlocksViewState extends State<ProgrammingBlocksView> {
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      var timerInfo = Provider.of<TimerInfo>(context, listen: false);
      timerInfo.updateRemainingTime();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //Pegando a altura sem usar o mediaquery pq estava utilizando o contexto causando erro na widget zoom
    final double physicalHeight = WidgetsBinding
        .instance.platformDispatcher.views.first.physicalSize.height;
    final double devicePixelRatio =
        WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio;
    final double height = physicalHeight / devicePixelRatio;

    //Pegando a largura da mesma forma que a altura
    final double physicalWidth = WidgetsBinding
        .instance.platformDispatcher.views.first.physicalSize.width;
    final double width = physicalWidth / devicePixelRatio;

    final FlutterConsoleController consoleController =
        FlutterConsoleController();
    consoleController.hide();

    //AQUI
    ProgrammingBlocksProjectModel? projectModel;
    projectModel = ProgrammingBlocksProjectModel.fromJson(
      jsonDecode(
        CalculatorAlgorithm.serializedCode,
      ),
    );

    return Scaffold(
      //MUDAR SCAFOLD NO EXERCISEsCREENiNFO? HMMM
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ProgrammingBlocks(
                projectModel: projectModel, //AQUI
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
            /*
            Consumer<TimerInfo>(
              builder: (context, data, child) {
                return ExerciseColoredButton(
                  buttonText: data.getIsOver()
                      ? 'CONFIRMAR'
                      : data.getRemainingTime().toString(),
                  onTapFunction: () {},
                  isReady: data.getIsOver(),
                ); 
              }, 
            ) */
          ],
        ),
      ),
    );
  }
}
