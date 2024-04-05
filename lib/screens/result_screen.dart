//File untuk menampilkan hasil
import 'package:flutter/material.dart';
import 'package:quiz/screens/start_screen.dart'; // Import widget tampilan awal (StartScreen)

class ResultScreen extends StatelessWidget {
  final int score;

  const ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Mengatur warna utama dan warna kedua
    Color mainColor = Color(0xFF071952);
    Color secondColor = Color(0xFF117eeb);

    return Scaffold(
      backgroundColor: mainColor, // Mengatur warna latar belakang layar utama
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Menyusun child widgets secara vertikal tengah
          crossAxisAlignment: CrossAxisAlignment.center, // Menyusun child widgets secara horizontal tengah
          children: [
            Text(
              "Kerja Bagus!", // Menambah tampilan text "Kerja Bagus!"
              style: TextStyle(
                  color: Colors.white, // Mengatur warna teks menjadi putih
                  fontSize: 50.0, // Mengatur ukuran teks menjadi 50
                  fontWeight: FontWeight.bold, // Mengatur tebal teks menjadi bold
                  fontFamily: 'Sansita'), // Mengatur jenis font teks
            ),
            SizedBox(
              height: 20.0, // Menambahkan jarak text dibawahnya
            ),
            Text(
              "skormu adalah", // Teks yang menampilkan "skormu adalah"
              style: TextStyle(
                  color: Colors.white, // Mengatur warna teks menjadi putih
                  fontSize: 25.0, // Mengatur ukuran teks menjadi 25
                  fontFamily: 'Roboto', // Mengatur jenis font teks
                  fontWeight: FontWeight.w400), // Mengatur tebal teks menjadi normal
            ),
            SizedBox(
              height: 50.0, // Menambahkan jarak text dengan bawahnya
            ),
            Text(
              "$score", // Menampilkan skor yang diterima
              style: TextStyle(
                color: Color(0xFFD1F6C1), // Mengatur warna teks skor
                fontSize: 120.0, // Mengatur ukuran teks skor
                fontFamily: 'Roboto', // Mengatur jenis font teks
                fontWeight: FontWeight.bold, // Mengatur tebal teks skor menjadi bold
              ),
            ),
            SizedBox(
              height: 60.0, // Menambahkan jarak text dengan button/tombol
            ),
            MaterialButton(
              onPressed: () {
                // Navigasi kembali ke tampilan awal (StartScreen) dan hapus semua rute hingga tampilan awal
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => StartScreen()),
                      (Route<dynamic> route) => false,
                );
              },
              elevation: 0.0, // Menghilangkan elevasi tombol
              color: Color(0xFFF57665), // Mengatur warna tombol menjadi orange
              textColor: Colors.white, // Mengatur warna teks tombol menjadi putih
              child: Text("Ulangi Kuis"), // Teks pada tombol untuk mengulangi kuis
            )
          ],
        ),
      ),
    );
  }
}
