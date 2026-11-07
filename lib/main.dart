import 'package:flutter/material.dart';
import 'katalog.dart';
import 'detail.dart';
import 'profil.dart';

void main() {
  runApp(const KebabApp());
}

class KebabApp extends StatelessWidget {
  const KebabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Katalog Kebab Ojawa',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const HalamanUtama(),
    );
  }
}

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' Katalog Kebab Ojawa',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.orange.shade100,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/image/kebab.jpg',
                    width: 50,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Selamat Datang di Kebab Ojawaa!',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Nikmati kelezatan kebab daging sapi pilihan dengan rempah khas Jawa.',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 24),
              
              // Menu Navigasi Utama
              const Text(
                'Menu katalog',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),

              Card(
                child: ListTile(
                  leading: const Icon(Icons.restaurant_menu, color: Colors.deepOrange),
                  title: const Text('Katalog Kebab Ojawa'),
                  subtitle: const Text('Lihat daftar menu kebab kami'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HalamanKatalog()),
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: const Icon(Icons.star, color: Colors.deepOrange),
                  title: const Text('Kebab Best Seller'),
                  subtitle: const Text('Lihat detail Kebab Sapi Jumbo yang paling laris'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HalamanDetail()),
                    );
                  },
                ),
              ),  
              Card(
                child: ListTile(
                  leading: const Icon(Icons.store, color: Colors.deepOrange),
                  title: const Text('Profil Toko'),
                  subtitle: const Text('Informasi lokasi & kontak kami'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HalamanProfil()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}