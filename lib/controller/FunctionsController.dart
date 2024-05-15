import 'package:flutter/material.dart';
import 'package:progaming/Views/screens/HomeScreen.dart';
import 'package:progaming/Views/widgets/AchievementContainer.dart';
import 'package:progaming/controller/FirebaseService.dart';
import 'package:progaming/models/UserModel.dart';
import 'package:progaming/themes/MyThemes.dart';

class FunctionController {
  final FirebaseService _firebaseService = FirebaseService();

  Future<void> pushPage(
    BuildContext context,
    UserModel user,
  ) async {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HomeScreen(
              user: user,
            )));
  }

  List<Widget> calcMedals({required UserModel user}) {
    List<Widget> resultList = [];
    List<String> typed = [
      "sequence",
      "progress",
      "coin",
    ];
    for (int aux = 0; aux < 3; aux++) {
      String type = typed[aux];
      switch (type) {
        case "sequence":
          //Dados a serem mudados para cada tipo de conquista
          String imgPath = 'assets/images/calendario.jpg';
          String title = 'Incansável';
          List<int> quantityList = [1, 2, 3, 5, 10];

          int aux = user.maxDiasSequencia;

          if (aux >= quantityList[4]) {
            //Caso 10 dias de sequencia ou mais
            for (int i = 4; i >= 0; i--) {
              resultList.addAll([
                AchievementContainer(
                  quantity: quantityList[i],
                  achievementTitle: title,
                  imagePath: imgPath,
                  containerColor: MyThemes.medalColors[i],
                  imagePathMedal: MyThemes.medalImgPaths[i],
                  isComplete: true,
                  subtext: 'Dias de sequência',
                ),
                const SizedBox(
                  height: 15,
                )
              ]);
            }
          } else if (aux >= quantityList[3]) {
            //Caso 5/6/7/8/9 dias de sequencia
            for (int i = 4; i >= 0; i--) {
              if (i == 4) {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: false,
                    userQuantity: aux,
                    subtext: 'Dias de sequência',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              } else {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: true,
                    subtext: 'Dias de sequência',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              }
            }
          } else if (aux >= quantityList[2]) {
            //Caso 3/4 dias de sequencia
            for (int i = 3; i >= 0; i--) {
              if (i == 3) {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: false,
                    userQuantity: aux,
                    subtext: 'Dias de sequência',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              } else {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: true,
                    subtext: 'Dias de sequência',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              }
            }
          } else if (aux >= quantityList[1]) {
            //Caso 2 dias de sequencia
            for (int i = 2; i >= 0; i--) {
              if (i == 2) {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: false,
                    userQuantity: aux,
                    subtext: 'Dias de sequência',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              } else {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: true,
                    subtext: 'Dias de sequência',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              }
            }
          } else if (aux >= quantityList[0]) {
            //Caso 1 dia de sequencia
            for (int i = 1; i >= 0; i--) {
              if (i == 1) {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: false,
                    userQuantity: aux,
                    subtext: 'Dias de sequência',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              } else {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: true,
                    subtext: 'Dias de sequência',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              }
            }
          } else {
            resultList.addAll([
              AchievementContainer(
                quantity: quantityList[0],
                achievementTitle: title,
                imagePath: imgPath,
                containerColor: MyThemes.medalColors[0],
                imagePathMedal: MyThemes.medalImgPaths[0],
                isComplete: false,
                userQuantity: aux,
                subtext: 'Dias de sequência',
              ),
              const SizedBox(
                height: 15,
              )
            ]);
          }
          break;
        case "progress":
          String imgPath = 'assets/images/rocket.jpg';
          String title = 'Imparável';
          List<int> quantityList = [1, 2, 3, 5, 10];

          int aux = user.progresso[0]['lista1'] +
              user.progresso[0]['lista2'] +
              user.progresso[0]['lista3'];

          if (aux >= quantityList[4]) {
            //Caso 10 dias de sequencia ou mais
            for (int i = 4; i >= 0; i--) {
              resultList.addAll([
                AchievementContainer(
                  quantity: quantityList[i],
                  achievementTitle: title,
                  imagePath: imgPath,
                  containerColor: MyThemes.medalColors[i],
                  imagePathMedal: MyThemes.medalImgPaths[i],
                  isComplete: true,
                  subtext: 'Desafios concluídos',
                ),
                const SizedBox(
                  height: 15,
                )
              ]);
            }
          } else if (aux >= quantityList[3]) {
            //Caso 5/6/7/8/9 dias de sequencia
            for (int i = 4; i >= 0; i--) {
              if (i == 4) {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: false,
                    userQuantity: aux,
                    subtext: 'Desafios concluídos',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              } else {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: true,
                    subtext: 'Desafios concluídos',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              }
            }
          } else if (aux >= quantityList[2]) {
            //Caso 3/4 dias de sequencia
            for (int i = 3; i >= 0; i--) {
              if (i == 3) {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: false,
                    userQuantity: aux,
                    subtext: 'Desafios concluídos',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              } else {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: true,
                    subtext: 'Desafios concluídos',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              }
            }
          } else if (aux >= quantityList[1]) {
            //Caso 2 dias de sequencia
            for (int i = 2; i >= 0; i--) {
              if (i == 2) {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: false,
                    userQuantity: aux,
                    subtext: 'Desafios concluídos',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              } else {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: true,
                    subtext: 'Desafios concluídos',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              }
            }
          } else if (aux >= quantityList[0]) {
            //Caso 1 dia de sequencia
            for (int i = 1; i >= 0; i--) {
              if (i == 1) {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: false,
                    userQuantity: aux,
                    subtext: 'Desafios concluídos',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              } else {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: true,
                    subtext: 'Desafios concluídos',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              }
            }
          } else {
            resultList.addAll([
              AchievementContainer(
                quantity: quantityList[0],
                achievementTitle: title,
                imagePath: imgPath,
                containerColor: MyThemes.medalColors[0],
                imagePathMedal: MyThemes.medalImgPaths[0],
                isComplete: false,
                userQuantity: aux,
                subtext: 'Desafios concluídos',
              ),
              const SizedBox(
                height: 15,
              )
            ]);
          }
          break;
        case "coin":
          String imgPath = 'assets/images/saco-dinheiro.jpg';
          String title = 'Magnata';
          List<int> quantityList = [100, 500, 1000, 5000, 10000];

          int aux = user.moedaAtual;

          if (aux >= quantityList[4]) {
            //Caso 10 dias de sequencia ou mais
            for (int i = 4; i >= 0; i--) {
              resultList.addAll([
                AchievementContainer(
                  quantity: quantityList[i],
                  achievementTitle: title,
                  imagePath: imgPath,
                  containerColor: MyThemes.medalColors[i],
                  imagePathMedal: MyThemes.medalImgPaths[i],
                  isComplete: true,
                  subtext: 'Moedas ganhas',
                ),
                const SizedBox(
                  height: 15,
                )
              ]);
            }
          } else if (aux >= quantityList[3]) {
            //Caso 5/6/7/8/9 dias de sequencia
            for (int i = 4; i >= 0; i--) {
              if (i == 4) {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: false,
                    userQuantity: aux,
                    subtext: 'Moedas ganhas',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              } else {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: true,
                    subtext: 'Moedas ganhas',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              }
            }
          } else if (aux >= quantityList[2]) {
            //Caso 3/4 dias de sequencia
            for (int i = 3; i >= 0; i--) {
              if (i == 3) {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: false,
                    userQuantity: aux,
                    subtext: 'Moedas ganhas',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              } else {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: true,
                    subtext: 'Moedas ganhas',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              }
            }
          } else if (aux >= quantityList[1]) {
            //Caso 2 dias de sequencia
            for (int i = 2; i >= 0; i--) {
              if (i == 2) {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: false,
                    userQuantity: aux,
                    subtext: 'Moedas ganhas',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              } else {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: true,
                    subtext: 'Moedas ganhas',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              }
            }
          } else if (aux >= quantityList[0]) {
            //Caso 1 dia de sequencia
            for (int i = 1; i >= 0; i--) {
              if (i == 1) {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: false,
                    userQuantity: aux,
                    subtext: 'Moedas ganhas',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              } else {
                resultList.addAll([
                  AchievementContainer(
                    quantity: quantityList[i],
                    achievementTitle: title,
                    imagePath: imgPath,
                    containerColor: MyThemes.medalColors[i],
                    imagePathMedal: MyThemes.medalImgPaths[i],
                    isComplete: true,
                    subtext: 'Moedas ganhas',
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ]);
              }
            }
          } else {
            resultList.addAll([
              AchievementContainer(
                quantity: quantityList[0],
                achievementTitle: title,
                imagePath: imgPath,
                containerColor: MyThemes.medalColors[0],
                imagePathMedal: MyThemes.medalImgPaths[0],
                isComplete: false,
                userQuantity: aux,
                subtext: 'Moedas ganhas',
              ),
              const SizedBox(
                height: 15,
              )
            ]);
          }
          break;
        default:
      }
    }
    return resultList;
  }

  calcAchievements({required UserModel user}) async {
    int achievementsCounter = 0;
    List<int> sequenceList = [1, 2, 3, 5, 10];
    List<int> progressList = [1, 2, 3, 5, 10];
    List<int> coinsList = [100, 500, 1000, 5000, 10000];

    int auxS = user.maxDiasSequencia;
    if (auxS >= sequenceList[4]) {
      achievementsCounter += 5;
    } else if (auxS >= sequenceList[3]) {
      achievementsCounter += 4;
    } else if (auxS >= sequenceList[2]) {
      achievementsCounter += 3;
    } else if (auxS >= sequenceList[1]) {
      achievementsCounter += 2;
    } else if (auxS >= sequenceList[0]) {
      achievementsCounter += 1;
    } else {
      achievementsCounter += 0;
    }

    auxS = user.progresso[0]['lista1'] +
        user.progresso[0]['lista2'] +
        user.progresso[0]['lista3'];
    if (auxS >= progressList[4]) {
      achievementsCounter += 5;
    } else if (auxS >= progressList[3]) {
      achievementsCounter += 4;
    } else if (auxS >= progressList[2]) {
      achievementsCounter += 3;
    } else if (auxS >= progressList[1]) {
      achievementsCounter += 2;
    } else if (auxS >= progressList[0]) {
      achievementsCounter += 1;
    } else {
      achievementsCounter += 0;
    }

    auxS = user.moedaTotal;
    if (auxS >= coinsList[4]) {
      achievementsCounter += 5;
    } else if (auxS >= coinsList[3]) {
      achievementsCounter += 4;
    } else if (auxS >= coinsList[2]) {
      achievementsCounter += 3;
    } else if (auxS >= coinsList[1]) {
      achievementsCounter += 2;
    } else if (auxS >= coinsList[0]) {
      achievementsCounter += 1;
    } else {
      achievementsCounter += 0;
    }

    user.conquistas = achievementsCounter;
    await _firebaseService.updateUserData(data: user);
  }
}
