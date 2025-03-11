import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Image.asset('assets/customerService.png',
                height: 100, fit: BoxFit.cover),
            const SizedBox(height: 20),
            const Text(
              "Pertanyaan Umum (FAQ)\n"
              "Temukan jawaban atas berbagai pertanyaan yang sering ditanyakan oleh pengguna mengenai penggunaan aplikasi ini. Dari proses pendaftaran, cara membeli barang, hingga pengaturan akun, semua jawaban ada di sini untuk mempermudah pengalaman Anda.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              "Panduan Penggunaan\n"
              "Pelajari langkah demi langkah cara menggunakan fitur-fitur aplikasi kami. Panduan ini akan membantu Anda memahami bagaimana memaksimalkan penggunaan aplikasi, mulai dari mencari produk hingga menyelesaikan transaksi dengan mudah.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              "Kontak Dukungan\n"
              "Jika Anda membutuhkan bantuan lebih lanjut, tim dukungan kami siap membantu. Anda dapat menghubungi kami melalui email, telepon, atau live chat. Kami berkomitmen untuk memberikan solusi terbaik bagi setiap masalah atau pertanyaan yang Anda miliki.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
