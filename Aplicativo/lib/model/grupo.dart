class Grupo {
  final String uid;
  final String titulo;
  final String quantidade;

  Grupo(this.uid, this.titulo, this.quantidade);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'uid': uid,
      'titulo': titulo,
      'quantidade': quantidade
    };
  }

  factory Grupo.fromJson(Map<String, dynamic> json) {
    return Grupo(
      json['uid'],
      json['titulo'],
      json['quantidade'],
    );
  }
}