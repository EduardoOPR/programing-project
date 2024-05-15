class UserModel {
  String id;
  String nome;
  int diasSequencia;
  int maxDiasSequencia;
  int moedaTotal;
  int moedaAtual;
  int conquistas;
  int vidas;
  List<Map<String, dynamic>> progresso;

  UserModel({
    this.id = '',
    required this.nome,
    required this.diasSequencia,
    required this.maxDiasSequencia,
    required this.progresso,
    required this.moedaTotal,
    required this.moedaAtual,
    required this.conquistas,
    required this.vidas,
  });

  Map<String, dynamic> toJson({List<String>? progressoUrls}) => {
        'id': id,
        'nome': nome,
        'diasSequencia': diasSequencia,
        'maxDiasSequencia': maxDiasSequencia,
        'moedaTotal': moedaTotal,
        'moedaAtual': moedaAtual,
        'conquistas': conquistas,
        'vidas': vidas,
        'progresso': progressoUrls ?? progresso,
      };

  static UserModel parse(Map<String, dynamic> post) {
    List<Map<String, dynamic>> progressoAux = [];

    if (post['progresso'] != null) {
      post['progresso'].map((element) {
        progressoAux.add({
          'lista1': element['lista1'],
          'lista2': element['lista2'],
          'lista3': element['lista3'],
        });
      }).toList();
    }

    return UserModel(
      id: post['id'],
      nome: post['nome'],
      diasSequencia: post['diasSequencia'],
      maxDiasSequencia: post['maxDiasSequencia'],
      moedaTotal: post['moedaTotal'],
      moedaAtual: post['moedaAtual'],
      conquistas: post['conquistas'],
      vidas: post['vidas'],
      progresso: progressoAux,
    );
  }

  setProgresso(List<Map<String, dynamic>> newprogresso) {
    progresso = newprogresso;
  }
}
