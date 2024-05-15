import 'package:flutter/material.dart';
import 'package:progaming/Views/programming_blocks/lib/programming_blocks_dependency.dart';
import 'package:progaming/Views/programming_blocks/lib/programming_blocks.dart';

class StopArea extends StatelessWidget {
  const StopArea({
    Key? key,
    required this.stopBuilder,
  }) : super(key: key);

  final Widget Function()? stopBuilder;

  void setRunningState(
      {required ValueNotifier<RunningState> runningListenable,
      required ProgrammingBlocksDependency programmingBlocks,
      required RunningState runningState}) {
    runningListenable.value = runningState;
    programmingBlocks.onChangeRunningState?.call(
      runningState,
    );
  }

  @override
  Widget build(BuildContext context) {
    final programmingBlocks = ProgrammingBlocksDependency.of(context)!;
    final runningListenable =
        programmingBlocks.panelController.runningStateListenable;
    final panelController = programmingBlocks.panelController;
    return InkWell(
        onTap: () {
          panelController.runningOperation!.cancel();
          programmingBlocks.panelController.runningOperation!.value
              .then((value) {
            setRunningState(
              runningListenable: runningListenable,
              programmingBlocks: programmingBlocks,
              runningState: RunningState.stoped,
            );
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: stopBuilder == null
              ? Stack(
                  children: [
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              50.0,
                            ),
                          ),
                          child: const SizedBox(
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.stop_circle,
                      size: 50.0,
                      color: Colors.red,
                    ),
                  ],
                )
              : stopBuilder!(),
        ));
  }
}
