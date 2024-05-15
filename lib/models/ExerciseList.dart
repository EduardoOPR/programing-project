import 'package:flutter/material.dart';
import 'package:progaming/Views/screens/ExerciseScreenInfo.dart';
import 'package:progaming/themes/MyThemes.dart';

class ExerciseController {
  List<List<List<ExerciseScreenInfo>>> listExercise = [
    //LISTA 1
    [
      [
        ExerciseScreenInfo(
          title: 'O que é programação?',
          imgPath: 'assets/images/desktop.png',
          boxText: TextSpan(
              text:
                  'Programação é basicamente o processo de escrever instruções para computadores, dizendo-lhes exatamente o que fazer. É como ',
              style: MyThemes.josefinSansRegular(
                  fontSize: 17, textColor: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: 'dar ordens a um computador',
                    style: MyThemes.josefinSansBold(
                        fontSize: 17, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        ',  para que ele realize tarefas específicas. \nEssas instruções são escritas em ',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 17, textColor: Colors.black)),
                TextSpan(
                    text: 'linguagens de programação',
                    style: MyThemes.josefinSansBold(
                        fontSize: 17, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        ', que são como idiomas que os computadores entendem. Onde esse conjunto de instruções geram um programa, que chamamos de ',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 17, textColor: Colors.black)),
                TextSpan(
                    text: 'Software.',
                    style: MyThemes.josefinSansBold(
                        fontSize: 17, textColor: MyThemes.lightBlue)),
              ]),
          total: 9,
          isExercise: false,
          exerciseType: '',
          imgScale: 0.6,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          title: 'O que é Software?',
          imgPath: 'assets/images/softwares.png',
          boxText: TextSpan(
              text: 'Software é um termo que se refere a todos os ',
              style: MyThemes.josefinSansRegular(
                  fontSize: 19, textColor: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text:
                        'programas de computador, aplicativos e sistemas operacionais',
                    style: MyThemes.josefinSansBold(
                        fontSize: 19, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        ' que usamos em nossos dispositivos eletrônicos. \nÉ o conjunto de instruções escritas pelos programadores que dizem ao computador como funcionar e realizar diferentes tarefas.',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 19, textColor: Colors.black)),
              ]),
          total: 9,
          isExercise: false,
          exerciseType: '',
          imgScale: 0.9,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          title: 'Onde Softwares podem ser utilizados?',
          imgPath: 'assets/images/software.png',
          boxText: TextSpan(
              text: 'Softwares podem ser utilizados em praticamente ',
              style: MyThemes.josefinSansRegular(
                  fontSize: 18, textColor: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: 'todos os dispositivos eletrônicos',
                    style: MyThemes.josefinSansBold(
                        fontSize: 18, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        ' que usamos no dia a dia. Isso inclui computadores, smartphones, tablets, videogames, sistemas de entretenimento, eletrodomésticos inteligentes, carros e muitos outros. Praticamente qualquer coisa que tenha um chip de computador dentro pode ser controlada por software.',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 18, textColor: Colors.black)),
              ]),
          total: 9,
          isExercise: false,
          exerciseType: '',
          imgScale: 1,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'O que é programação?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Marque a alternativa CORRETA',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'Uma forma de desenhar gráficos',
            'Uma maneira de contar histórias',
            'Um processo de escrever instruções para computadores ',
            'Um método para tocar instrumentos musicais'
          ],
          answer: 2,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'Qual é a definição de software?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Marque a alternativa CORRETA',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'Um material de construção utilizado na engenharia civil',
            'Um conjunto de instruções escritas por biólogos ',
            'Um tipo de tecido utilizado na moda',
            'Um termo que se refere a programas de computador e aplicativos',
          ],
          answer: 3,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'O que é uma linguagem de programação?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Marque a alternativa CORRETA',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'Um idioma que os computadores entendem para escrever instruções',
            'Um dicionário de palavras estrangeiras ',
            'Um guia de viagem',
            'Um livro de receitas de culinária',
          ],
          answer: 0,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'São características dos softwares:',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Marque a alternativa INCORRETA',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'São utilizados apenas por astronautas',
            'Podem tornar nossas vidas mais fáceis, divertidas e eficientes',
            'Podem ser utilizados em uma variedade de dispositivos eletrônicos ',
            'São criados por programadores e desenvolvedores de software',
          ],
          answer: 0,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'Onde os softwares podem ser utilizados?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Marque a alternativa CORRETA',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'Apenas em geladeiras e micro-ondas',
            'Somente em livros e revistas ',
            'Exclusivamente em aviões e trens',
            'Em praticamente todos os dispositivos eletrônicos que usamos no dia a dia ',
          ],
          answer: 3,
          selectedIndex: [false, false, false, false],
        ),
      ],
      [
        ExerciseScreenInfo(
          imgPath: 'assets/images/computer.png',
          boxText: TextSpan(
              text: '1º',
              style: MyThemes.josefinSansBold(
                  fontSize: 21, textColor: MyThemes.lightBlue),
              children: <TextSpan>[
                TextSpan(
                    text: ': Desenhe um círculo;\n',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 21, textColor: Colors.black)),
                TextSpan(
                    text: '2º',
                    style: MyThemes.josefinSansBold(
                        fontSize: 21, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text: ': Pinte-o de amarelo;\n',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 21, textColor: Colors.black)),
                TextSpan(
                    text: '3º',
                    style: MyThemes.josefinSansBold(
                        fontSize: 21, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text: ': Coloque um sorriso dentro do círculo.',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 21, textColor: Colors.black)),
              ]),
          title:
              'Por exemplo, se você quiser que o computador desenhe um sorriso dentro de um círculo amarelo. Você deve escrever um algoritmo dizendo: ',
          total: 9,
          isExercise: false,
          exerciseType: '',
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'O que é um "algoritmo"?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Qual das altenativas está correta?',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'Um conjunto de instruções para realizar uma tarefa.',
            'Uma estrela no céu.',
            'Lugar onde você guarda informações que podem mudar.',
            'Uma estrela no céu.'
          ],
          answer: 0,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: 'assets/images/Level_Buracos.png',
          boxText: TextSpan(
              text: "1) Esquerda \n2) Meio \n3) Direita",
              style: MyThemes.josefinSansRegular(
                  fontSize: 20, textColor: Colors.black)),
          title:
              'Qual algoritmo deve deve ser seguido para não cair no buraco?',
          total: 9,
          isExercise: true,
          exerciseType: "3A",
          option: const [
            '1), 2), 3)',
            '1), 3), 2)',
            '2), 2), 3)',
          ],
          answer: 0,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'O que é um algoritmo?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Marque a alternativa INCORRETA?',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'Algoritmos são uma série de passos para resolver um problema.',
            'Algoritmos podem ser usados para fazer um bolo.',
            'Algoritmos são usados apenas por adultos.',
            'Algoritmos podem ser escritos de diferentes maneiras.'
          ],
          answer: 2,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: 'assets/images/escova.png',
          boxText: TextSpan(
              text:
                  "A) Pegar a escova de dentes \nB) Escovar os dentes por dois minutos \nC) Colocar pasta de dente na escova",
              style: MyThemes.josefinSansRegular(
                  fontSize: 20, textColor: Colors.black)),
          title: 'Qual algoritmo deve ser seguido para escovar os dentes?',
          total: 9,
          isExercise: true,
          exerciseType: "3A",
          option: const [
            'C, B, A',
            'A, C, B',
            'A, B, C',
          ],
          answer: 1,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'Qual das alternativas está INCORRETA sobre algoritmos?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Selecione uma das alternativas',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'Algoritmos podem ser escritos em linguagens de programação.',
            'Algoritmos são uma sequência de instruções.',
            'Algoritmos podem ajudar a organizar tarefas diárias.',
            'Algoritmos são usados apenas por cientistas.'
          ],
          answer: 3,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: 'assets/images/foods.png',
          boxText: TextSpan(
              text:
                  "A) Cortar duas fatias de pão  \nB) Comer o sanduíche \nC) Pegar os ingredientes \nD) Colocar o recheio entre as fatias de pão ",
              style: MyThemes.josefinSansRegular(
                  fontSize: 18, textColor: Colors.black)),
          title:
              'Qual sequencia de instruções deve ser seguida para prepar um Sanduíche',
          total: 9,
          isExercise: true,
          exerciseType: "3A",
          option: const [
            'C, B, A, D',
            'A, C, D, B',
            'C, A, D, B',
            'D, A, C, B'
          ],
          answer: 2,
          selectedIndex: [false, false, false, false],
        ),
      ],
      [
        ExerciseScreenInfo(
          imgPath: 'assets/images/variaveis.png',
          boxText: TextSpan(
              text:
                  'Tipos de variáveis\nImagine que você tem uma mochila e dentro dela você pode guardar várias coisas que vai precisar na escola. Durante o dia, você pode precisar trocar algo da mochila, como um livro ou retirar um lanche para comer.\nNo mundo da programação, as variáveis são como essas mochilas. Uma variável é um ',
              style: MyThemes.josefinSansRegular(
                  fontSize: 16, textColor: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: 'espaço na memória do computador',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        ' onde você pode guardar informações que seu programa vai usar. Assim como você muda o que está dentro da sua mochila, você também pode ',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
                TextSpan(
                    text:
                        'mudar a informação que está guardada em uma variável. ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
              ]),
          title: 'O que são variáveis?',
          total: 9,
          isExercise: false,
          exerciseType: '',
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: 'noimage',
          boxText: TextSpan(
              text: 'Vamos ver alguns exemplos:\n\n',
              style: MyThemes.josefinSansRegular(
                  fontSize: 16, textColor: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: 'Inteiro(int): ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        'caixas que só pode guardar números inteiros, como 1, 2, 3, -4, -5, etc. Não dando para colocar números quebrados como 1,5 ou 3,75.\n\n',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
                TextSpan(
                    text: 'Ponto flutuante (float): ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        'caixas que também poder guardar números com partes fracionadas, ou seja, números que têm partes inteiras e partes decimais, como 1,5, 3,75.\n\n',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
                TextSpan(
                    text: 'String: ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        'É uma caixa onde você pode guardar frases ou palavras, como "Olá!", "mundo", ou "1234"..\n\n',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
                TextSpan(
                    text: 'Booleano (bool): ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        'Essa é uma caixa que só guarda duas coisas: verdadeiro (true) ou falso (false). É como ter uma caixa com um interruptor que só pode estar ligado ou desligado.',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
              ]),
          title:
              'As variáveis podem ter diferentes tipos, onde eles correspondem ao tipo de coisa que você pode guardar na sua "mochila" (a variável). Cada tipo de variável é como um tipo diferente de caixinha que só cabe certas coisas.',
          total: 9,
          isExercise: false,
          exerciseType: '',
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text:
                'Qual dos seguintes NÃO é um tipo de variável na programação?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Quanto aos tipos de variáveis',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'String',
            'Fração',
            'Booleano',
            'Inteiro',
          ],
          answer: 1,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'O que é programação?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Marque a alternativa CORRETA',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'Uma forma de desenhar gráficos',
            'Uma maneira de contar histórias',
            'Um processo de escrever instruções para computadores ',
            'Um método para tocar instrumentos musicais'
          ],
          answer: 2,
          isReview: true,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text:
                'Qual é o propósito de definir o tipo de variável em programação?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Marque a alternativa CORRETA',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'Para que o computador saiba como lidar com os dados armazenados na variável',
            'Para confundir o computador e tornar o programa mais desafiador',
            'Para mostrar aos outros programadores o que você está fazendo',
            'Para deixar o programa mais bonito',
          ],
          answer: 0,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text:
                'Se você quiser armazenar o número 3.14 em uma variável, que tipo de variável você deve usar?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Quanto aos tipos de variáveis',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'String',
            'Booleano',
            'Ponto Flutuante',
            'Inteiro',
          ],
          answer: 2,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'O que são variáveis na programação?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Marque a alternativa CORRETA',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'São objetos que você pode carregar na mochila.',
            'São partes de um código secreto que o computador usa para funcionar.',
            'São como páginas de um livro que o programa lê para saber o que fazer.',
            'São caixas de memória usadas para armazenar e manipular informações.'
          ],
          answer: 3,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text:
                'Se você quer armazenar seu nome completo em uma variável, qual tipo de variável você usaria?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Quanto aos tipos de variáveis',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'String',
            'Booleano',
            'Ponto Flutuante',
            'Inteiro',
          ],
          answer: 0,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: 'assets/images/Level_Buracos.png',
          boxText: TextSpan(
              text: "1) Esquerda \n2) Meio \n3) Direita",
              style: MyThemes.josefinSansRegular(
                  fontSize: 20, textColor: Colors.black)),
          title:
              'Qual algoritmo deve deve ser seguido para não cair no buraco?',
          total: 9,
          isExercise: true,
          exerciseType: "3A",
          option: const [
            '1), 2), 3)',
            '1), 3), 2)',
            '2), 2), 3)',
          ],
          answer: 0,
          selectedIndex: [false, false, false, false],
          isReview: true,
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text:
                'Qual dos seguintes valores uma variável do tipo Booleana pode armazenar?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Quanto ao tipo Booleano',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            '"Olá mundo"',
            '"123"',
            'Falso',
            '3,14',
          ],
          answer: 2,
          selectedIndex: [false, false, false, false],
        ),
      ],
    ],
    //LISTA 2
    [
      [
        ExerciseScreenInfo(
          imgPath: 'assets/images/doors.png',
          boxText: TextSpan(
              text:
                  'Estruturas condicionais na programação são como caminhos que o computador segue para fazer escolhas. \nDigamos que você está jogando um jogo onde precisa escolher entre abrir uma porta vermelha ou uma porta azul. Se você escolher a porta vermelha, algo acontece. Se escolher a porta azul, algo diferente acontece. \nNa programação isso é possível utilizando as estruturas ',
              style: MyThemes.josefinSansRegular(
                  fontSize: 16, textColor: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: 'se (if) ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text: 'e',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
                TextSpan(
                    text: ' senão (else), ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text: 'Que serão explicadas adiante',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
              ]),
          title: 'O que são estruturas condicionais',
          total: 9,
          isExercise: false,
          exerciseType: '',
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: 'noimage',
          boxText: TextSpan(
              text: '',
              style: MyThemes.josefinSansRegular(
                  fontSize: 16, textColor: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: '> (Maior que): ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 17, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        'Quando você usa o símbolo ">", você está perguntando ao computador se algo é maior que outra coisa. Por exemplo, se você diz "5 > 3", está perguntando se 5 é maior que 3. Se for verdadeiro, o computador responde "sim".\n\n',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 17, textColor: Colors.black)),
                TextSpan(
                    text: '< (Menor que): ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 17, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        'Ao usar o símbolo "<", você está perguntando ao computador se algo é menor que outra coisa. Por exemplo, se você diz "2 < 7", está perguntando se 2 é menor que 7. Se for verdadeiro, o computador responde "sim".\n\n',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 17, textColor: Colors.black)),
                TextSpan(
                    text: '= (Igual): ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 17, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        'O símbolo "=" pergunta ao computador se algo é igual a outra coisa. Por exemplo, se você diz "2 = 7", está perguntando se 2 é igual a 7. O computador irá retornar a resposta dessa pergunta.\n',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 17, textColor: Colors.black)),
              ]),
          title:
              'Mas antes de explicar as diferentes condicionais vamos primeiramente aprender alguns dos símbolos utilizados nas comparações',
          total: 9,
          isExercise: false,
          exerciseType: '',
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: 'assets/images/condicao.png',
          boxText: TextSpan(
              text: '',
              style: MyThemes.josefinSansRegular(
                  fontSize: 16, textColor: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: '>= (Maior ou igual a): ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        'Agora, você pode querer saber se algo é maior ou igual a outra coisa. Isso é útil quando você precisa incluir o caso em que os dois números são iguais. Por exemplo, se você diz "5 >= 5", está perguntando se 5 é maior ou igual a 5. Se for verdadeiro, o computador responde "sim".\n\n ',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
                TextSpan(
                    text: '<= (Menor ou igual a): ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        'Da mesma forma, você pode perguntar se algo é menor ou igual a outra coisa.  Onde o resultado é verdadeiro ou faço igual os demais.',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
              ]),
          title: 'Mas alguns símbolos normalmente utilizados: ',
          total: 9,
          isExercise: false,
          exerciseType: '',
          imgScale: 0.6,
          selectedIndex: [false, false, false, false],
        ),
        //Adicionar as questões de condição, já foram criadas no chatGPT
        ExerciseScreenInfo(
          imgPath: 'assets/images/rain.png',
          boxText: TextSpan(
              text:
                  'O "se" (if) e o "senão" (else) ajudam o computador a tomar decisões com base em diferentes situações, onde o bloco de código que o computador irá executar dependerá de uma ou mais condições presentes nessas estruturas. Por exemplo para decidir se você vai ou não sair de casa com um guarda-chuva:\n\n',
              style: MyThemes.josefinSansRegular(
                  fontSize: 16, textColor: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: 'Se (estiver chovendo)\n',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text: 'Pegar um guarda-chuva antes de sair',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
                TextSpan(
                    text: '\nSenão\n',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text: 'Sair de casa sem o guarda-chuva',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
              ]),
          title: 'Se (if) e Senão (else)',
          total: 9,
          isExercise: false,
          exerciseType: '',
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text:
                'Em um jogo, se um jogador tiver mais de 500 pontos, uma mensagem de "Vitória!" é exibida. Se não, uma mensagem de "Tente novamente!" é exibida. Qual estrutura condicional pode ser usada para implementar isso?',
            style: MyThemes.josefinSansRegular(
                fontSize: 19, textColor: Colors.black),
          ),
          title: 'Qual das altenativas está CORRETA',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const ['Loop', 'Se-Senão (If-Else)', 'Função', 'Variável'],
          answer: 1,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text:
                'Na programação, como são chamadas as regras que o computador segue para tomar decisões com base em diferentes situações?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Qual das altenativas está CORRETA',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'Estruturas de repetição',
            'Estruturas de dados',
            'Estruturas de armazenamento',
            'Estruturas condicionais'
          ],
          answer: 3,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: 'assets/images/macas.png',
          imgScale: 1.2,
          boxText: TextSpan(
              text:
                  "Se a quantidade de maçãs for 4 quantas maçãs serão comidas?",
              style: MyThemes.josefinSansRegular(
                  fontSize: 20, textColor: Colors.black)),
          title: 'Considerando o algoritmo abaixo responda:',
          total: 9,
          isExercise: true,
          exerciseType: "3A",
          option: const [
            'Duas maçãs',
            'Nenhuma maçã',
            'Quatro maçãs',
          ],
          answer: 1,
          selectedIndex: [false, false, false, false],
        ),
      ],
      [],
      [],
    ],
    [[], [], []]
  ];

  static int selectQuestion = 5;
  void setSelectQuestion(int newValue) {
    selectQuestion = newValue;
  }

  int getSelectQuestion() {
    return selectQuestion;
  }
}
