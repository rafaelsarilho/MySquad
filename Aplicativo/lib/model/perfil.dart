class Perfil {
  final String uid;
  final String elo;
  final String nick;
  final String info;

  Perfil(this.uid, this.elo, this.nick, this.info);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'elo': elo,
      'info': info,
      'nick': nick,
      'uid': uid,
    };
  }

  factory Perfil.fromJson(Map<String, dynamic> json) {
    return Perfil(
      json['elo'],
      json['info'],
      json['nick'],
      json['uid'],
    );
  }
}
