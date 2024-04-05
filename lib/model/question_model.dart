// Kelas QuestionModel adalah model data untuk mewakili satu pertanyaan dalam kuis.
class QuestionModel {
  String? question; // Properti untuk menyimpan teks pertanyaan
  Map<String, bool>? answer; // Properti untuk menyimpan jawaban dan status kebenarannya

  // Konstruktor QuestionModel untuk inisialisasi objek dengan teks pertanyaan dan jawaban
  QuestionModel(this.question, this.answer);
}