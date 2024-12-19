import 'package:flutter/material.dart';

class GridViewLearning extends StatelessWidget {
  const GridViewLearning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Data contoh untuk ditampilkan
    final List<String> apiItems = [
      "API adalah sekumpulan definisi dan protokol untuk komunikasi antar aplikasi.",
      "REST API: API berbasis HTTP dengan metode GET, POST, PUT, DELETE.",
      "GraphQL API: API untuk query data secara fleksibel.",
      "SOAP API: API berbasis protokol XML.",
      "WebSocket API: API untuk komunikasi dua arah secara real-time.",
      "Library untuk API di Flutter: http, dio, dan lainnya.",
      "Langkah penggunaan API: Tambahkan library, buat request, parsing response, tampilkan data.",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('API Concepts in GridView'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        // Tambahkan warna latar belakang
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Color.fromARGB(255, 98, 139, 169)], // Gradien warna
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: apiItems.length, // Jumlah item
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.api, size: 24, color: Colors.blueAccent),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: Text(
                      apiItems[index],
                      style:
                          const TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
