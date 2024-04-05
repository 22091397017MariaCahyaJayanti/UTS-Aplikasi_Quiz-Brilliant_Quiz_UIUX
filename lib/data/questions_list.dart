//File untuk menyimpan pertanyaan
import 'package:quiz/model/question_model.dart';

List<QuestionModel> questions = [
  QuestionModel(
    "Salah satu jenis mata kuliah yang belajar tentang desain adalah?",
    {
      "Pemrograman Website": false,
      "Statistika": false,
      "UI/UX Design": true,
      "Pemrograman Mobile": false,
    },
  ),
  QuestionModel("Berikut yang bukan termasuk komponen dari UX adalah?", {
    "Usability": false,
    "Desain Visual": false,
    "Riset Pengguna": false,
    "Jarak": true,
  }),
  QuestionModel("Kepanjangan dari UX adalah?", {
    "User Expertise": false,
    "User Experience": true,
    "Universal Experience": false,
    "Universal Expertise": false,
  }),
  QuestionModel("Siapa yang mencetuskan UX dan tahun berapa pertama kali dicetuskan?", {
    "Don Norman (1882)": false,
    "Charles Babbage (1822)": false,
    "Don Norman (1993)": true,
    "Charles Babbage (1993)": false,
  }),
  QuestionModel("Apa kepanjangan UI dalam desain web?", {
    "User Interface": true,
    "User Interaction": false,
    "User Impact": false,
    "Universal Interface": false,
  }),
  QuestionModel("Fungsi utama dari UX adalah?", {
    "Menentukan warna dan tata letak halaman": false,
    "Membuat desain yang menarik secara visual": false,
    "Meningkatkan kepuasan pengguna dengan produk": true,
    "Mengintegrasikan berbagai platform sosial": false,
  }),
  QuestionModel(
      "Mengapa penting untuk melakukan pengujian pengguna (user testing) dalam desain UX?", {
    "Untuk memastikan desain terlihat keren": false,
    "Untuk Verifikasi desain dengan preferensi desainer.": false,
    "Untuk menghemat waktu dan biaya": false,
    "Untuk memastikan desain sesuai harapan pengguna.": true,
  }),
  QuestionModel("Mengapa penting untuk memperhatikan responsif desain dalam pengembangan UI/UX?", {
    "Agar desain terlihat lebih menarik secara visual.": false,
    "Agar desain menjadi lebih kompleks.": false,
    "Agar desain responsif terhadap berbagai perangkat dan layar.": true,
    "Agar desain lebih konsisten.": false,
  }),
  QuestionModel(
      "Mengapa penting untuk memiliki prototipe dalam proses desain UX? ?",
      {
        "Untuk menciptakan kesan pertama yang kuat.": false,
        "Agar desain terlihat lebih menarik secara visual.": false,
        "Untuk penyempurnaan desain sebelum peluncuran.": true,
        "Untuk menunjukkan kemampuan desainer kepada klien.": false,
      }),
  QuestionModel(
      "Mengapa penting untuk memperhatikan user feedback dalam desain UI/UX?", {
    "Untuk memastikan desain menarik secara visual.": false,
    "Untuk perbaikan desain berdasarkan umpan balik pengguna.": true,
    "Untuk persetujuan pengguna sebelum peluncuran produk.": false,
    "Untuk panduan pengguna dalam penggunaan produk.": false,
  }),
];