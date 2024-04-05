//File untuk menampilkan credit kelompok
import 'package:flutter/material.dart';

// Kelas CreditScreen adalah Stateless Widget yang menampilkan layar kredit
class CreditScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Credit Kelompok 2', // Judul tampilan layar kredit
          style: TextStyle(
            color: Colors.white, // Warna teks judul
            fontFamily: 'NotoSerif', // Font teks judul
            fontWeight: FontWeight.bold, // Ketebalan teks judul
          ),
        ),
        backgroundColor: Color(0xFF2D9596), // Warna latar belakang judul
      ),
      backgroundColor: Colors.green[50], // Warna latar belakang layar menjadi hijau
      body: ListView( // Menggunakan ListView sebagai parent untuk menampilkan daftar konten secara teratur
        children: [
          Padding(
            padding: EdgeInsets.all(20), // Memberikan padding sebesar 20 piksel di semua sisi
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20), // Mengatur jarak tinggi antar box credit item
                CreditItem( // Item terdiri dari nama,nim,email,image dan warna kontainer
                  name: 'Yunike Shandy Jholan N.',
                  nim: '22091397008',
                  email: 'yunikeshandy.22008@mhs.unesa.ac.id',
                  imagePath: 'images/yunikee.jpg',
                  color: Colors.white,
                ),
                CreditItem(
                  name: 'Ananda Mayang Septia',
                  nim: '22091397015',
                  email: 'anandamayang.22015@mhs.unesa.ac.id',
                  imagePath: 'images/mayangg.jpg',
                  color: Colors.white,
                ),
                CreditItem(
                  name: 'Maria Cahya Jayanti',
                  nim: '22091397017',
                  email: 'mariacahya.22017@mhs.unesa.ac.id',
                  imagePath: 'images/mariaa.jpg',
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Kelas CreditItem adalah StatelessWidget yang menampilkan informasi anggota kelompok dalam kontainer
class CreditItem extends StatelessWidget {
  final String name;
  final String nim;
  final String email;
  final String imagePath;
  final Color color;

  const CreditItem({
    required this.name, // Nama anggota kelompok
    required this.nim, // NIM anggota kelompok
    required this.email, // Email anggota kelompok
    required this.imagePath, // Path gambar anggota kelompok
    required this.color, // Warna latar belakang kontainer anggota
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Lebar kontainer mengisi layar penuh
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: color, // Warna latar belakang kontainer anggota
        borderRadius: BorderRadius.circular(10), // Mengatur gambar bentuk lingkaran
        border: Border.all(color: Colors.grey), // Garis tepi kontainer anggota berwarna abu
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              imagePath, // Gambar anggota kelompok
              width: 100, // Mengatur lebar dan tinggi gambar
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Text(
            name, // Nama anggota kelompok
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 5),
          Text(
            email, // Email anggota kelompok
            style: TextStyle(
              fontSize: 13,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 5),
          Text(
            nim, // NIM anggota kelompok
            style: TextStyle(
              fontSize: 13,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
