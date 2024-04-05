//File untuk tampilan saat kuis
import 'package:flutter/material.dart'; // Mengimpor paket flutter yang berisi berbagai widget
import 'package:quiz/data/questions_list.dart'; // Mengimpor daftar pertanyaan
import 'package:quiz/screens/result_screen.dart'; // Mengimpor tampilan hasil (ResultScreen)
import 'package:quiz/screens/start_screen.dart'; // Mengimpor tampilan awal (StartScreen)

void main() {
  runApp(const MyApp()); // Memulai aplikasi dengan widget MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartScreen(), // Menggunakan tampilan awal (StartScreen) sebagai halaman utama aplikasi
      debugShowCheckedModeBanner: false, // Menyembunyikan banner debug
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState(); // Membuat stateful widget untuk halaman utama
}

class _HomePageState extends State<HomePage> {
  // Variabel warna utama dan kedua
  Color mainColor = Color(0xFF071952);
  Color secondColor = Color(0xFF088395);
  // Pengontrol halaman
  PageController? _controller = PageController(initialPage: 0);
  // Variabel untuk status permainan
  bool isPressed = false;
  Color isTrue = Colors.green;
  Color isWrong = Colors.red;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor, // Warna latar belakang utama
      body: Padding(
        padding: EdgeInsets.all(18.0), // Padding untuk semua sisi
        child: PageView.builder(
          physics: const NeverScrollableScrollPhysics(), // Tidak dapat digulirkan
          controller: _controller!,
          onPageChanged: (page) {
            setState(() {
              isPressed = false; // Mengatur kembali isPressed menjadi false saat halaman berubah
            });
          },
          itemCount: questions.length, // Jumlah total pertanyaan
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity, // Lebar box diatur agar mengisi lebar layar
                  child: Text(
                    "Question ${index + 1}/${questions.length}", // Menampilkan nomor pertanyaan
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 28.0,
                    ),
                  ),
                ),
                const Divider( // Mengatur garis dibawah text questions
                  color: Colors.white,
                  height: 8.0,
                  thickness: 1.5,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  questions[index].question!, // Menampilkan pertanyaan
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                // Membuat tombol untuk setiap jawaban
                for (int i = 0; i < questions[index].answer!.length; i++)
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 18.0),
                    child: MaterialButton(
                      shape: StadiumBorder(),
                      color: isPressed
                          ? questions[index].answer!.entries.toList()[i].value
                          ? isTrue
                          : isWrong
                          : secondColor,
                      padding: EdgeInsets.symmetric(vertical: 18.0),
                      onPressed: () {
                        setState(() {
                          isPressed = true;
                        });
                        if (questions[index]
                            .answer!
                            .entries
                            .toList()[i]
                            .value) {
                          score += 10; // Menambah skor jika jawaban benar
                        }
                      },
                      child: Text(
                        questions[index].answer!.keys.toList()[i], // Menampilkan teks jawaban
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton(
                      onPressed: isPressed
                          ? index + 1 == questions.length
                          ? () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ResultScreen(score))); // Menavigasi ke tampilan hasil dengan skor yang didapat
                      }
                          : () {
                        _controller!.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.linear);
                        setState(() {
                          isPressed = false; // Mengatur kembali isPressed menjadi false saat tombol Next ditekan
                        });
                      }
                          : null,
                      style: OutlinedButton.styleFrom(
                        shape: StadiumBorder(),
                        side: BorderSide(
                            color: Color(0xFFF57665), width: 2.0), // Desain tombol
                      ),
                      child: Text(
                        index + 1 == questions.length
                            ? "Lihat Hasil" // Teks pada tombol jika di halaman terakhir
                            : "Next", // Teks pada tombol jika bukan halaman terakhir
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
