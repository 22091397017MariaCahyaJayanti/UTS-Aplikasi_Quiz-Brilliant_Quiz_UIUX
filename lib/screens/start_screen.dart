//File untuk menampilkan halaman awal untuk mulai
import 'package:flutter/material.dart';
import 'package:quiz/main.dart'; // Import widget main.dart (HomePage)
import 'package:quiz/screens/credit_screen.dart'; // Import CreditScreen

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          // Menambahkan judul "Brilliant Quiz UI/UX" dengan penyesuaian padding atas
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0), // Menyesuaikan padding atas
            child: Text(
              'Brilliant Quiz UI/UX', // Judul tampilan
              textAlign: TextAlign.center, // Posisi teks ditengah
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w400,
                color: Color(0xFF12372A), //warna teks hijau tua
                fontFamily: 'SingleDay',
              ),
            ),
          ),
        ),
      ),
      // Mengatur isi di start screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 550, // Mengatur tinggi gambar
              child: Column(
                children: [
                  Image.asset(
                    'images/start.jpg', // Gambar untuk tampilan di beranda
                    width: 400, // Mengatur lebar gambar
                  ),
                  SizedBox(height: 10), // Mengatur jarak antara gambar dan kalimat
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ), // Atur batasan kiri dan kanan
                    // Menambah dan mengatur kalimat di bawah gambar
                    child: Text(
                      'Tingkatkan kecerdasanmu dan jadilah yang terbaik!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFF43766C), // text berwarna hijau teal
                        fontFamily: 'Neuton',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Mengatur fungsi dan desain tombol "Mulai"
            ElevatedButton(
              onPressed: () {
                // Navigasi ke tampilan kuis (HomePage) ketika tombol "Mulai" ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(350, 50), // Lebar dan tinggi minimum tombol
                backgroundColor: Color(0xFFF57665), // Warna latar belakang tombol Mulai
              ),
              child: Text(
                'Mulai', // Teks pada tombol Mulai
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            SizedBox(height: 25), // Jarak antara tombol mulai dan tombol Credit
            ElevatedButton( // Mengatur fungsi dan desain tombol "Credit"
              onPressed: () {
                // Navigasi ke CreditScreen ketika tombol "Credit" ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreditScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(350, 50), // Lebar dan tinggi tombol
                backgroundColor: Color(0xFFF57665), // Warna latar belakang tombol Credit
              ),
              child: Text(
                'Credit', // Teks pada tombol Credit
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
