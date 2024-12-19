import 'package:flutter/material.dart';

class ListViewLearning extends StatelessWidget {
  const ListViewLearning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Data contoh dari NewsPage (konten dipindahkan ke sini)
    final List<String> newsItems = [
      "Berita 1: Flutter semakin populer di kalangan pengembang aplikasi.",
      "Berita 2: ListView memungkinkan tampilan data secara vertikal.",
      "Berita 3: Dart adalah bahasa pemrograman yang digunakan di Flutter.",
      "Berita 4: Pengembangan aplikasi dengan Flutter sangat cepat dan efisien.",
      "Berita 5: Flutter mendukung tampilan UI yang responsif di berbagai perangkat.",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView with News Content'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        // Tambahkan warna latar belakang
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Color.fromARGB(255, 130, 171, 200)
            ], // Gradien warna
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          itemCount: newsItems.length, // Jumlah item
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const Icon(Icons.article, color: Colors.blueAccent),
                title: Text(
                  newsItems[index],
                  style: const TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
