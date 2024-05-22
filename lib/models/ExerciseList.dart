import 'package:flutter/material.dart';
import 'package:progaming/Views/screens/ExerciseScreenInfo.dart';
import 'package:progaming/example_algorithms/calculator_algorithm.dart';
import 'package:progaming/themes/MyThemes.dart';

/*
  1-1: programação e software
  1-2: algoritmo
  1-3: variáveis e tipos de variáveis
  1-4: operadores

  2-1: estruturas condicionas: if e else e condições (>, <, >=, <=, ==)
  2-2: estruturas de repetição : while
  2-3: estruturas de repetição: do while e for
*/
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
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'O que é uma String em programação?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Quanto ao tipo String',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'Um tipo de brinquedo',
            'Uma sequência de caracteres, como letras e números',
            'Um tipo de variável que só pode armazenar números inteiros',
            'Um tipo de animal',
          ],
          answer: 1,
          selectedIndex: [false, false, false, false],
        ),
      ],
      [
        ExerciseScreenInfo(
          imgPath: 'assets/images/calculadora.png',
          boxText: TextSpan(
              text:
                  'Os operadores são símbolos que usamos em programação para fazer várias operações com os números, como ',
              style: MyThemes.josefinSansRegular(
                  fontSize: 17, textColor: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: 'somar, subtrair, multiplicar e dividir',
                    style: MyThemes.josefinSansBold(
                        fontSize: 17, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        '. Eles funcionam como os sinais de matemática que você já conhece assim como a combinação de vários operadores também seguem a mesma ordem:\n\n',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 17, textColor: Colors.black)),
                TextSpan(
                    text: '1º ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 17, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text: 'Operações entre Parênteses "()"\n',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 17, textColor: Colors.black)),
                TextSpan(
                    text: '2º ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 17, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text: 'Multiplicação e Divisão "* e /"\n',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 17, textColor: Colors.black)),
                TextSpan(
                    text: '3º ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 17, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text: 'Soma e Subtração "+ e -"',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 17, textColor: Colors.black)),
              ]),
          title: 'O que são Operadores?',
          total: 9,
          isExercise: false,
          exerciseType: '',
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: 'noimage',
          boxText: TextSpan(
              text: 'Aqui estão alguns dos operadores mais comuns:\n\n',
              style: MyThemes.josefinSansRegular(
                  fontSize: 16, textColor: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: 'Operador de atribuição (=): ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text: 'Atribui um valor à uma variável, exemplo:\nX = 5 ',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
                TextSpan(
                    text: '#Salva o número 5 no x\n\n',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 18,
                        textColor: Color.fromARGB(255, 85, 84, 84))),
                TextSpan(
                    text: 'Operador de Adição (+): ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text: 'Soma dois números. exemplo: \nresultado = 3 + 2.',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
                TextSpan(
                    text: ' #O resultado será 5\n\n',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 18,
                        textColor: Color.fromARGB(255, 85, 84, 84))),
                TextSpan(
                    text: 'Operador de Subtração (-): ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        'Subtrai um número do outro. exemplo:\nresultado = 5 - 2',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
                TextSpan(
                    text: ' #O resultado será 3\n\n',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 18,
                        textColor: Color.fromARGB(255, 85, 84, 84))),
                TextSpan(
                    text: 'Operador de Multiplicação (*): ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        'Multiplica dois números. exemplo:\nresultado = 4 * 2 ',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
                TextSpan(
                    text: '#O resultado será 8\n\n',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 18,
                        textColor: Color.fromARGB(255, 85, 84, 84))),
                TextSpan(
                    text: 'Operador de Divisão (/): ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        'Divide um número pelo outro exemplo:\nresultado = 10 / 2  ',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
                TextSpan(
                    text: '#O resultado será 5',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 18,
                        textColor: Color.fromARGB(255, 85, 84, 84))),
              ]),
          title: '',
          total: 9,
          isExercise: false,
          exerciseType: '',
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'Qual será o resultado da expressão 7 + 5?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Operador de Adição',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            '10',
            '11',
            '12',
            '13',
          ],
          answer: 2,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: ' Qual será o resultado da expressão 15 - 6?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Operador de Subtração',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            '7',
            '8',
            '9',
            '10',
          ],
          answer: 2,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: ' Qual dos operadores a seguir é o responsável pela divisão?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Quanto aos Operadores',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            '=',
            '/',
            '*',
            '-',
          ],
          answer: 1,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'Qual será o resultado da expressão 4 * 3?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Operador de Multiplicação',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            '9',
            '10',
            '11',
            '12',
          ],
          answer: 3,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text:
                'Qual dos operadores a seguir é responsável por realizar atribuição?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Quantos aos Operadores',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            '*',
            '/',
            '-',
            '=',
          ],
          answer: 3,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text:
                'Qual será o resultado da expressão 3 + 2 * 4? (Lembre-se da ordem das operações)',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Combinação de Operadores',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            '11',
            '20',
            '14',
            '21',
          ],
          answer: 0,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'O que a linha de código a seguir faz:\n',
            style: MyThemes.josefinSansRegular(
                fontSize: 19, textColor: Colors.black),
            children: <TextSpan>[
              TextSpan(
                  text: 'variavel = variavel + 1',
                  style: MyThemes.josefinSansBold(
                      fontSize: 17, textColor: MyThemes.lightBlue)),
            ],
          ),
          title: 'Qual das altenativas está CORRETA',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'A variável receberá seu próprio valor mais 1',
            'A variável passará a guardar o valor 1',
            'A variável terá seu valor diminuído',
            'A variável não irá alterar'
          ],
          answer: 0,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'Qual será o resultado da expressão (8 / 2) + (3 * 3)?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Operadores em uma Expressão Complexa',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            '11',
            '12',
            '13',
            '14',
          ],
          answer: 2,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text:
                'Qual é a função de um operador de atribuição em programação?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Marque a alternativa CORRETA ',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'Comparar valores',
            'Adicionar números',
            'Atribuir um valor a uma variável',
            'Dividir números',
          ],
          answer: 2,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'Qual será o resultado da expressão 10 - 4 / 2?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Ordem das Operações',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            '3',
            '8',
            '5',
            '6',
          ],
          answer: 1,
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
                        'Você está perguntando ao computador se algo é maior que outra coisa. Por exemplo, se você diz "5 > 3", está perguntando se 5 é maior que 3. Se for verdadeiro, o computador responde "Verdade".\n\n',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 17, textColor: Colors.black)),
                TextSpan(
                    text: '< (Menor que): ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 17, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        'Já o símbolo "<", você está perguntando ao computador se algo é menor que outra coisa. Por exemplo, se você diz "2 < 7", está perguntando se 2 é menor que 7. Se for verdadeiro, o computador responde "Verdade".\n\n',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 17, textColor: Colors.black)),
                TextSpan(
                    text: '== (Igual): ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 17, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        'O símbolo "==" pergunta ao computador se algo é igual a outra coisa. Por exemplo, se você diz "2 == 7", está perguntando se 2 é igual a 7. O computador irá retornar a resposta dessa pergunta.\n',
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
                        'Agora, você pode querer saber se algo é maior ou igual a outra coisa. Isso é útil quando você precisa incluir o caso em que os dois números são iguais. Por exemplo, se você diz "5 >= 5", está perguntando se 5 é maior ou igual a 5. Se eles forem, o computador responde "Verdadeiro".\n\n ',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
                TextSpan(
                    text: '<= (Menor ou igual a): ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        'Da mesma forma, você pode perguntar se algo é menor ou igual a outra coisa.  Onde o resultado é verdadeiro ou falso igual os demais.',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
              ]),
          title: 'Mais alguns símbolos normalmente utilizados: ',
          total: 9,
          isExercise: false,
          exerciseType: '',
          imgScale: 0.6,
          selectedIndex: [false, false, false, false],
        ),
        //Adicionar as questões de condição, já foram criadas no chatGPT

        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'O que o símbolo ">" significa em programação?',
            style: MyThemes.josefinSansRegular(
                fontSize: 19, textColor: Colors.black),
          ),
          title: 'Qual das altenativas está CORRETA',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const ['Menor que', 'Maior que', 'igual', 'Diferente de'],
          answer: 1,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text:
                'Qual símbolo é usado para perguntar se algo é menor que outra coisa?',
            style: MyThemes.josefinSansRegular(
                fontSize: 19, textColor: Colors.black),
          ),
          title: 'Qual das altenativas está CORRETA',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const ['==', '>', '<', '>='],
          answer: 2,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text:
                'Para a condição a seguir, qual valor o computador irá retornar:\n\n"Carro" == "Canoa"',
            style: MyThemes.josefinSansRegular(
                fontSize: 19, textColor: Colors.black),
          ),
          title: 'Quanto as condições',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const ['Canoa', 'Carro', 'Falso', 'Verdadeiro'],
          answer: 2,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text:
                'Quando você quer saber se algo é maior ou igual a outra coisa, qual símbolo você usa?',
            style: MyThemes.josefinSansRegular(
                fontSize: 19, textColor: Colors.black),
          ),
          title: 'Qual das altenativas está CORRETA',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const ['>=', '>', '<', '='],
          answer: 0,
          selectedIndex: [false, false, false, false],
        ),
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
                  "Se a quantidade de maçãs for 4, quantas maçãs serão comidas?",
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
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text:
                'O que o computador irá retornar para a condição a seguir:\n\n 10 > 8',
            style: MyThemes.josefinSansRegular(
                fontSize: 19, textColor: Colors.black),
          ),
          title: 'Qual das altenativas está CORRETA',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const ['10', 'Verdadeiro', 'Falso', '8'],
          answer: 1,
          selectedIndex: [false, false, false, false],
        ),
      ],
      [
        ExerciseScreenInfo(
          imgPath: 'assets/images/Parque.png',
          boxText: TextSpan(
              text:
                  'Vamos imaginar que você precisa fazer a mesma tarefa várias vezes. Por exemplo, talvez você precise dar 10 voltas ao redor do parque para se exercitar. Seria chato ter que dizer "ande ao redor do parque" 10 vezes, certo? Em vez disso, você poderia dizer: "Repita a ação de andar ao redor do parque 10 vezes".\nNa programação, estruturas de repetição, ou "loops", fazem exatamente isso! Elas ',
              style: MyThemes.josefinSansRegular(
                  fontSize: 16, textColor: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text:
                        'permitem que você diga ao computador para repetir uma ação várias vezes sem ter que escrever o mesmo código repetidamente. ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
              ]),
          title: 'Estruturas de repetição ou "Loops"',
          total: 9,
          isExercise: false,
          exerciseType: '',
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: 'assets/images/corda.png',
          boxText: TextSpan(
              text: 'O loop Enquanto (while) é usado quando você ',
              style: MyThemes.josefinSansRegular(
                  fontSize: 16, textColor: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text:
                        'não sabe exatamente quantas vezes precisará repetir a ação, mas sabe que quer continuar até que uma certa condição seja verdadeira.',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        '\nÉ como dizer: "continue pulando corda enquanto não estiver cansado", mostrando que a ação continua enquanto a condição (não estar cansada) é verdadeira. ',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
              ]),
          title: 'Estrutura de repetição Enquanto (while)',
          total: 9,
          isExercise: false,
          exerciseType: '',
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'O que são estruturas de repetição em programação?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Marque a alternativa CORRETA',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'Blocos de código que são executados apenas uma vez',
            'Blocos de código que são executados repetidamente',
            'Um código que armazena dados temporários',
            'Blocos de código que são usados para definir variáveis',
          ],
          answer: 1,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'Quando um loop Enquanto (while) termina sua execução?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Marque a alternativa CORRETA',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'Quando uma condição específica se torna falsa',
            'Quando todas as ações dentro do loop foram executadas',
            'Após um número fixo de repetições',
            'Quando o programa encontra um erro',
          ],
          answer: 0,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'O que o símbolo ">" significa em programação?',
            style: MyThemes.josefinSansRegular(
                fontSize: 19, textColor: Colors.black),
          ),
          title: 'Qual das altenativas está CORRETA',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const ['Menor que', 'Maior que', 'igual', 'Diferente de'],
          answer: 1,
          isReview: true,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'Qual exemplo representa melhor o uso do Loop "Enquanto"?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Marque a alternativa CORRETA',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'Andar ao redor de uma pista exatamente 5 vezes',
            'Contar números de 1 a 10',
            'Continuar desenhando até que a tinta acabe',
            'Enviar uma mensagem para cada amigo em uma lista',
          ],
          answer: 2,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'Em qual situação você usaria um loop "Enquanto"?',
            style: MyThemes.josefinSansRegular(
                fontSize: 21, textColor: Colors.black),
          ),
          title: 'Marque a alternativa CORRETA',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'Quando você sabe exatamente quantas vezes a ação deve ser repetida',
            'Quando você precisa repetir uma ação até que um evento aconteça',
            'Quando você quer executar uma ação apenas uma vez',
            'Quando você precisa somar dois números',
          ],
          answer: 1,
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
          isReview: true,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: 'assets/images/varInicial.png',
          boxText: TextSpan(
              text: 'Agora que aprendemos o que uma estrutura de repetição ',
              style: MyThemes.josefinSansRegular(
                  fontSize: 16, textColor: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: 'Enquanto ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        'faz, vamos ver como ela funciona em uma linguagem de programação \n\nPara isso vamos usar a mesma situação de pular corda mostrada anteriormente, para esse caso temos que definir algumas variáveis, sendo elas:\n',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
                TextSpan(
                    text: 'Energia ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        ', que nos indicará se quem está pulando corda ainda consegue pular mais, onde a cada pulo ela será diminuida e quando essa energia for zero sabemos que não é mais possível pular.',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
                TextSpan(
                    text: '\nQuantidade de pulos ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        ', que irá contar quantos pulos foram feitos, onde para pulo será adicionado 1 ao seu valor',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
                TextSpan(
                    text:
                        '\n\nPor fim vamos supor que a energia de quem está pulando é 3 e a quantidade de pulos inicial é 0',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
              ]),
          title: 'Exemplo do Loop Enquanto em uma linguagem de computador',
          total: 9,
          isExercise: false,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: 'assets/images/while.png',
          boxText: TextSpan(
              text: 'Enquanto (',
              style: MyThemes.josefinSansBold(
                  fontSize: 19, textColor: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: 'Energia',
                    style: MyThemes.josefinSansBold(
                        fontSize: 19, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text: '> 0)\n',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 19, textColor: Colors.black)),
                TextSpan(
                    text: '\t\t\t\tAdiciona 1 à ',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 19, textColor: Colors.black)),
                TextSpan(
                    text: 'Qnt. de pulos\n',
                    style: MyThemes.josefinSansBold(
                        fontSize: 19, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text: '\t\t\t\tDiminui 1 da ',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 19, textColor: Colors.black)),
                TextSpan(
                    text: 'Energia\n\n\n',
                    style: MyThemes.josefinSansBold(
                        fontSize: 19, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text: ' O que a estrutura acima faz é checar a condição',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
                TextSpan(
                    text: 'Energia > 0',
                    style: MyThemes.josefinSansBold(
                        fontSize: 19, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        ', onde enquanto essa condição for verdadeira o Loop será executado, somando 1 ao valor da quantidade de pulos e subtraindo 1 da energia, até que ela seja zero, abaixo podemos ver os valores de cada variável a cada repetição:',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 19, textColor: Colors.black)),
              ]),
          title: 'A estrutura Enquanto ficaria da seguinte forma:',
          total: 9,
          isExercise: false,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: 'assets/images/enquanto1.png',
          boxText: TextSpan(
              text:
                  'Qual será a quantidade de maçãs ao final do Loop "Enquanto" mostrado acima se a quantidade de maçãs inicial for 5?',
              style: MyThemes.josefinSansRegular(
                  fontSize: 20, textColor: Colors.black)),
          title: 'A partir do Loop abaixo responda:',
          total: 9,
          isExercise: true,
          exerciseType: "3A",
          option: const [
            '0',
            '5',
            '-1',
            '1',
          ],
          answer: 0,
          imgScale: 1.4,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: 'assets/images/enquanto2.png',
          boxText: TextSpan(
              text: 'Quantas vezes o loop "Enquanto" será executado?',
              style: MyThemes.josefinSansRegular(
                  fontSize: 20, textColor: Colors.black)),
          title: 'A partir do algoritmo abaixo responda:',
          total: 9,
          isExercise: true,
          exerciseType: "3A",
          option: const [
            '4',
            '5',
            '6',
          ],
          answer: 1,
          imgScale: 1.4,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: 'assets/images/enquanto3.png',
          boxText: TextSpan(
              text: 'Qual será o valor de x após a execução?',
              style: MyThemes.josefinSansRegular(
                  fontSize: 20, textColor: Colors.black)),
          title: 'A partir do algoritmo abaixo responda:',
          total: 9,
          isExercise: true,
          exerciseType: "3A",
          option: const [
            '16',
            '32',
            '64',
          ],
          answer: 1,
          imgScale: 1.4,
          selectedIndex: [false, false, false, false],
        ),
      ],
      [
        ExerciseScreenInfo(
          imgPath: 'assets/images/escorregador.png',
          boxText: TextSpan(
              text: 'O loop "Faça Enquanto" é um tipo de loop que ',
              style: MyThemes.josefinSansRegular(
                  fontSize: 17, textColor: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text:
                        'sempre executa o bloco de código pelo menos uma vez,',
                    style: MyThemes.josefinSansBold(
                        fontSize: 17, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        ' mesmo que a condição seja falsa na primeira verificação, sendo essa a diferença para o Loop "Enquanto" que verifica antes de executar um bloco de código. \nPor exemplo: Uma pessoa subindo em um escorregador e escorregando. Mesmo que a condição (querer escorregar) não seja mais verdadeira após uma vez, a pessoa sempre escorrega pelo menos uma vez.',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 17, textColor: Colors.black)),
              ]),
          title: 'Loop "Faça Enquanto" (do while)',
          total: 9,
          isExercise: false,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: 'assets/images/dowhile.png',
          boxText: TextSpan(
              text:
                  'O exemplo anterior é mostrado a seguir no formato de um código e pode explicado da seguinte forma:\n\nComo o computador lê o código de cima para baixo primeiramente ele vai ler o "',
              style: MyThemes.josefinSansRegular(
                  fontSize: 18, textColor: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: 'Descer o escorregador',
                    style: MyThemes.josefinSansBold(
                        fontSize: 18, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text: '" e só depois ele vai checar a condição "',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 18, textColor: Colors.black)),
                TextSpan(
                    text: 'querer descer o escorregado',
                    style: MyThemes.josefinSansBold(
                        fontSize: 18, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        '", fazendo com que ele desça pelo menos uma vez antes de checar se ele realmente queria descer',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 18, textColor: Colors.black)),
              ]),
          title: 'Loop "Faça Enquanto" (do while)',
          total: 9,
          isExercise: false,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
              text: 'Qual é a principal diferença entre o loop ',
              style: MyThemes.josefinSansRegular(
                  fontSize: 18, textColor: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: 'Faça Enquanto',
                    style: MyThemes.josefinSansBold(
                        fontSize: 18, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text: ' (do while) e o loop ',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 18, textColor: Colors.black)),
                TextSpan(
                    text: 'Enquanto',
                    style: MyThemes.josefinSansBold(
                        fontSize: 18, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text: ' (while)?',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 18, textColor: Colors.black)),
              ]),
          title: 'A partir do algoritmo abaixo responda:',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            '"Faça Enquanto" verifica a condição antes de executar o bloco de código',
            '"Faça Enquanto" pode não executar o bloco de código nenhuma vez',
            '"Faça Enquanto" sempre executa o bloco de código pelo menos uma vez.',
            '"Faça Enquanto" é usado apenas para contar até 5',
          ],
          answer: 2,
          imgScale: 1.8,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'O que o símbolo "<" significa em programação?',
            style: MyThemes.josefinSansRegular(
                fontSize: 19, textColor: Colors.black),
          ),
          title: 'Qual das altenativas está CORRETA',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const ['Menor que', 'Maior que', 'igual', 'Diferente de'],
          answer: 0,
          isReview: true,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: 'assets/images/dowhile1.png',
          boxText: TextSpan(
              text:
                  'Qual será o valor final da variável Contador ao final do loop?',
              style: MyThemes.josefinSansRegular(
                  fontSize: 20, textColor: Colors.black)),
          title: 'Em relação ao código a seguir:',
          total: 9,
          isExercise: true,
          exerciseType: "3A",
          option: const [
            '0',
            '1',
            '2',
            '3',
          ],
          answer: 3,
          imgScale: 1.8,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text:
                'O que acontecerá se a condição no "Faça Enquanto" for falsa na primeira verificação?',
            style: MyThemes.josefinSansRegular(
                fontSize: 18, textColor: Colors.black),
          ),
          title: 'A partir do algoritmo abaixo responda:',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'O loop nunca será executado.',
            'O loop será executado uma vez e depois parará.',
            'O loop será executado infinitamente',
            'O loop só será executado se a condição for verdadeira.',
          ],
          answer: 1,
          imgScale: 1.8,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: 'assets/images/dowhile2.png',
          boxText: TextSpan(
              text:
                  'Qual será o valor final da variável Contador ao final do loop?',
              style: MyThemes.josefinSansRegular(
                  fontSize: 20, textColor: Colors.black)),
          title: 'Em relação ao código a seguir:',
          total: 9,
          isExercise: true,
          exerciseType: "3A",
          option: const [
            '-1',
            '0',
            '1',
            '2',
          ],
          answer: 0,
          imgScale: 1.8,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: 'assets/images/hands.png',
          boxText: TextSpan(
              text: 'O loop "for" é usado quando você ',
              style: MyThemes.josefinSansRegular(
                  fontSize: 17, textColor: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: 'sabe exatamente quantas vezes quer repetir uma ação',
                    style: MyThemes.josefinSansBold(
                        fontSize: 17, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        '. Ele é como um contador que sabe de antemão quantas vezes vai contar. \nPor exemplo: caso você queira contar os 10 dedos das mãos, você sabe exatamente quantas vezes precisa contar (10). Onde cada dedo que você usa na contagem representa uma repetição do loop, e a contagem é clara e definida.',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 17, textColor: Colors.black)),
              ]),
          title: 'Loop "Para" (for)',
          total: 9,
          isExercise: false,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: 'assets/images/for.png',
          boxText: TextSpan(
              text: '\n',
              style: MyThemes.josefinSansRegular(
                  fontSize: 18, textColor: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: 'Início: ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 18, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text: 'Define o ponto de partida.\n',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 18, textColor: Colors.black)),
                TextSpan(
                    text: 'Condição: ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 18, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text: 'Define até quando o loop deve continuar. \n',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 18, textColor: Colors.black)),
                TextSpan(
                    text: 'Incremento: ',
                    style: MyThemes.josefinSansBold(
                        fontSize: 18, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        'Define como o contador muda a cada repetição.\n\nAlém disso é necessário uma variável que irá armazenar o valor da contagem, que será incrementado a cada repetição, no exemplo abaixo ',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 18, textColor: Colors.black)),
                TextSpan(
                    text: 'Contagem_Dos_Dedos',
                    style: MyThemes.josefinSansBold(
                        fontSize: 18, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        ' é essa variável, e ela vai variar de 1 até 10, onde a cada repetição um dedo será contado',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 18, textColor: Colors.black)),
              ]),
          title: 'Como um Loop "Para" funciona em uma linguagem de programação',
          total: 9,
          isExercise: false,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text:
                'Qual dos seguintes loops é mais apropriado para executar um bloco de código um número específico de vezes conhecido antes da execução?',
            style: MyThemes.josefinSansRegular(
                fontSize: 18, textColor: Colors.black),
          ),
          title: 'Marque a alternativa CORRETA',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'Nenhuma das alternativas',
            'Enquanto (while)',
            'Faça Equanto (do while)',
            'Para (for)',
          ],
          answer: 3,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: 'O que a linha de código a seguir faz:\n',
            style: MyThemes.josefinSansRegular(
                fontSize: 19, textColor: Colors.black),
            children: <TextSpan>[
              TextSpan(
                  text: 'variavel = variavel + 1',
                  style: MyThemes.josefinSansBold(
                      fontSize: 17, textColor: MyThemes.lightBlue)),
            ],
          ),
          title: 'Qual das altenativas está CORRETA',
          total: 9,
          isExercise: true,
          exerciseType: "4A",
          option: const [
            'A variável receberá seu próprio valor mais 1',
            'A variável passará a guardar o valor 1',
            'A variável terá seu valor diminuído',
            'A variável não irá alterar'
          ],
          answer: 0,
          isReview: true,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: 'assets/images/for1.png',
          boxText: TextSpan(
              text:
                  'Qual será o valor final da variável soma, dado que seu valor inicial é 0?',
              style: MyThemes.josefinSansRegular(
                  fontSize: 20, textColor: Colors.black)),
          title: 'Em relação ao código a seguir:',
          total: 9,
          isExercise: true,
          exerciseType: "3A",
          option: const [
            '5',
            '0',
            '4',
            '6',
          ],
          answer: 0,
          imgScale: 1.8,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: 'assets/images/for1.png',
          boxText: TextSpan(
              text:
                  'Qual será o valor final da variável Soma, dado que seu valor inicial é 3?',
              style: MyThemes.josefinSansRegular(
                  fontSize: 20, textColor: Colors.black)),
          title: 'Em relação ao código a seguir:',
          total: 9,
          isExercise: true,
          exerciseType: "3A",
          option: const [
            '5',
            '3',
            '8',
            '7',
          ],
          answer: 2,
          imgScale: 1.8,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: 'assets/images/for2.png',
          boxText: TextSpan(
              text: 'Qual será o valor final da variável Soma?',
              style: MyThemes.josefinSansRegular(
                  fontSize: 20, textColor: Colors.black)),
          title: 'Em relação ao código a seguir:',
          total: 9,
          isExercise: true,
          exerciseType: "3A",
          option: const [
            '0',
            '8',
            '16',
            '32',
          ],
          answer: 0,
          imgScale: 1.8,
          selectedIndex: [false, false, false, false],
        ),
      ],
    ],
    [
      [
        //Primeiro tem que ter exerciseType como 2A mesmo não sendo, pra ativiar o comando no initState
        ExerciseScreenInfo(
          title: 'Programação em blocos',
          imgPath: 'assets/images/bloco0.png',
          boxText: TextSpan(
              text:
                  'Agora que já aprendemos alguns conceitos básicos da programação chegou a hora de praticar, e isso será feito através da ',
              style: MyThemes.josefinSansRegular(
                  fontSize: 16, textColor: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: 'Programação em Blocos',
                    style: MyThemes.josefinSansBold(
                        fontSize: 16, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        '. \nA Programação em Blocos nada mais é do que uma forma de criar um programa de computador como se você estivesse montando um quebra-cabeças, onde cada peça faz uma instrução específica, sendo essas instruções as mesmas que você já viu no decorrer dos exercícios!',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 16, textColor: Colors.black)),
              ]),
          total: 9,
          isExercise: false,
          exerciseType: '2A',
          imgScale: 0.5,
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          title: 'Apresentando a tela principal',
          imgPath: 'assets/images/tutorial.png',
          boxText: TextSpan(
            text:
                'Na tela vemos dois botões principais, um botão de Play e uma peça de quebra-cabeça\n\nO botão de play executa o programa que você montou, mostrando um tela preto com a saída do seu código\njá a peça de qubra-cabeça mostra e esconde o menu que contém todas as peças que você poderá utilizar',
            style: MyThemes.josefinSansRegular(
                fontSize: 18, textColor: Colors.black),
          ),
          total: 9,
          isExercise: false,
          exerciseType: '',
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          title: 'Bloco Escreva',
          imgPath: 'assets/images/escreva.png',
          boxText: TextSpan(
              text:
                  'Agora vamos começar a falar sobre os diferentes blocos/peças que você pode utilizar, sendo o primeiro deles o bloco ',
              style: MyThemes.josefinSansRegular(
                  fontSize: 18, textColor: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: 'Escreva',
                    style: MyThemes.josefinSansBold(
                        fontSize: 18, textColor: MyThemes.lightBlue)),
                TextSpan(
                    text:
                        '.\nEsse bloco pode ser acessado no menu Console, que será o menu que conterá os blocos de entradas e saídas de valores, sendo o Escreva o bloco de saída\n Existem dois tipos de escreva, um para números e outro para Strings, além disso cada bloco possui uma caixa depois do valor escrita Pular Linha, ao marcar essa caixa será pulada uma linha depois do conteúdo ser escrito na tela.',
                    style: MyThemes.josefinSansRegular(
                        fontSize: 18, textColor: Colors.black)),
              ]),
          total: 9,
          isExercise: false,
          exerciseType: '',
          selectedIndex: [false, false, false, false],
        ),
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: '',
            style: MyThemes.josefinSansRegular(
                fontSize: 16, textColor: Colors.black),
          ),
          title: 'Se (if) e Senão (else)',
          total: 9,
          isExercise: true,
          exerciseType: '2A',
          showCategory: [false, true, false, false, false, false],
          blockString: CalculatorAlgorithm.olaMundo,
          selectedIndex: [false, false, false, false],
        ),
      ],
      [],
      [
        ExerciseScreenInfo(
          imgPath: '',
          boxText: TextSpan(
            text: '',
            style: MyThemes.josefinSansRegular(
                fontSize: 16, textColor: Colors.black),
          ),
          title: 'Se (if) e Senão (else)',
          total: 9,
          isExercise: true,
          exerciseType: '2A',
          blockString: CalculatorAlgorithm.serializedCode,
          selectedIndex: [false, false, false, false],
        ),
      ]
    ]
  ];

  static int selectQuestion = 5;
  void setSelectQuestion(int newValue) {
    selectQuestion = newValue;
  }

  int getSelectQuestion() {
    return selectQuestion;
  }
}
