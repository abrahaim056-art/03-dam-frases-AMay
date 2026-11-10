class Frase {
  final int? id;
  final String texto;
  final String autor;

  Frase({
    this.id,
    required this.texto,
    required this.autor,
  });

  // Convertir a Map para la base de datos
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'texto': texto,
      'autor': autor,
    };
  }

  // Crear Frase desde un Map de SQLite
  factory Frase.fromMap(Map<String, dynamic> map) {
    return Frase(
      id: map['id'],
      texto: map['texto'],
      autor: map['autor'],
    );
  }
}