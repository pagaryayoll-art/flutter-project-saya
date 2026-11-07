import 'package:flutter/material.dart';

class HalamanProfil extends StatelessWidget {
  const HalamanProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Toko', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.deepOrange,
              child: Icon(Icons.storefront, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 12),
            const Text(
              'Kedai Kebab Ojawa',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text('Rasa Bintang Lima, Harga Mahasiswa', style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 24),
            ListTile(
              leading: const Icon(Icons.location_on, color: Colors.deepOrange),
              title: const Text('Alamat'),
              subtitle: const Text('Jl. Kesesi Utara No. 24, Pekalongan'),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.access_time, color: Colors.deepOrange),
              title: const Text('Jam Operasional'),
              subtitle: const Text('Setiap Hari: 15:00 - 22:00 WIB'),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.phone, color: Colors.deepOrange),
              title: const Text('Kontak WhatsApp'),
              subtitle: const Text('0858 - 7557 - 4100'),
            ),
            const Spacer(),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                minimumSize: const Size.fromHeight(45),
                side: const BorderSide(color: Colors.deepOrange),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back, color: Colors.deepOrange),
              label: const Text('Kembali', style: TextStyle(color: Colors.deepOrange)),
            ),
          ],
        ),
      ),
    );
  }
}