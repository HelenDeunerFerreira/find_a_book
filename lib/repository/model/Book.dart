class Book {
  int id;
  String nome;
  String autor;
  String ano_publi;

  Book(
      {required this.id,
      required this.nome,
      required this.autor,
      required this.ano_publi});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'],
      nome: json['nome'],
      autor: json['autor'],
      ano_publi: json['ano_publi'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'nome': nome, 'autor': autor, 'ano_publi': ano_publi};
  }
}
