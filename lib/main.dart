import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RestaurantPage(),
    );
  }
}

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({super.key});

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  bool suka1 = false;
  bool suka2 = false;
  bool suka3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          children: [
            // FOTO RESTORAN
            Stack(
              children: [
                Image.network(
                  'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?auto=format&fit=crop&w=900&q=80',
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),

                Positioned(
                  top: 45,
                  left: 18,
                  child: Icon(Icons.arrow_back, color: Colors.white, size: 28),
                ),

                Positioned(
                  top: 45,
                  right: 18,
                  child: Icon(Icons.share, color: Colors.white, size: 27),
                ),

                Positioned(
                  top: 48,
                  left: 60,
                  right: 60,
                  child: Text(
                    'Rumah Masakan Ibu',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            // BAGIAN PUTIH
            Transform.translate(
              offset: const Offset(0, -22),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(20, 22, 20, 30),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // NAMA
                    const Text(
                      'Rumah Masakan Ibu',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    // RATING
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber, size: 23),
                        const SizedBox(width: 6),
                        const Text(
                          '4.9',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          '(120 Ulasan)',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    // KATEGORI
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.teal.shade50,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.restaurant, color: Colors.teal, size: 18),
                          SizedBox(width: 6),
                          Text(
                            'Indonesian • Masakan Rumahan',
                            style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 11),

                    // ALAMAT
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.grey,
                          size: 21,
                        ),
                        const SizedBox(width: 7),
                        Expanded(
                          child: Text(
                            'Jl. Sultan Babullah No. 18, Ternate',
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          _stat(Icons.near_me, '1.5 km', 'Jarak'),

                          _divider(),

                          _stat(
                            Icons.access_time,
                            '10.00 - 21.00',
                            'Waktu Buka WIT',
                          ),

                          _divider(),

                          _stat(
                            Icons.account_balance_wallet,
                            'Rp20.000',
                            'Harga Rata-rata',
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    // DESKRIPSI
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rumah Masakan Ibu menyajikan masakan '
                            'rumahan dengan rasa yang hangat dan '
                            'sederhana. Kami menggunakan bahan segar '
                            'dan resep tradisional untuk menghadirkan '
                            'cita rasa khas Indonesia.',
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 13,
                              height: 1.5,
                              color: Colors.black87,
                            ),
                          ),

                          SizedBox(height: 7),

                          Text(
                            'Selengkapnya ˅',
                            style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),

                    // JUDUL MENU
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Menu Populer',
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const Text(
                          'Lihat Semua  ›',
                          style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 13),

                    // MENU
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: _menu(
                            'Ayam Goreng',
                            'Rp25.000',
                            'https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec?auto=format&fit=crop&w=400&q=80',
                            suka1,
                            () {
                              setState(() {
                                suka1 = !suka1;
                              });
                            },
                          ),
                        ),

                        const SizedBox(width: 8),

                        Expanded(
                          child: _menu(
                            'Ikan Tuna',
                            'Rp28.000',
                            'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?auto=format&fit=crop&w=400&q=80',
                            suka2,
                            () {
                              setState(() {
                                suka2 = !suka2;
                              });
                            },
                          ),
                        ),

                        const SizedBox(width: 8),

                        Expanded(
                          child: _menu(
                            'Telur Ceplok',
                            'Rp18.000',
                            'https://images.unsplash.com/photo-1525351484163-7529414344d8?auto=format&fit=crop&w=400&q=80',
                            suka3,
                            () {
                              setState(() {
                                suka3 = !suka3;
                              });
                            },
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 25),

                    // RESERVASI
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                        ),
                        label: const Text(
                          'Reservasi Sekarang',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // STATISTIK
  Widget _stat(IconData icon, String angka, String keterangan) {
    return Expanded(
      child: Column(
        children: [
          Icon(icon, color: Colors.teal, size: 21),

          const SizedBox(height: 6),

          Text(
            angka,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),

          const SizedBox(height: 4),

          Text(
            keterangan,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey.shade600, fontSize: 10),
          ),
        ],
      ),
    );
  }

  // GARIS
  Widget _divider() {
    return Container(height: 50, width: 1, color: Colors.grey.shade200);
  }

  // MENU CARD
  Widget _menu(
    String nama,
    String harga,
    String gambar,
    bool suka,
    VoidCallback klik,
  ) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 2,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                gambar,
                width: double.infinity,
                height: 105,
                fit: BoxFit.cover,
              ),

              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nama,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 12),
                    ),

                    const SizedBox(height: 7),

                    Text(
                      harga,
                      style: const TextStyle(
                        color: Colors.teal,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // LOVE
          Positioned(
            top: 6,
            right: 6,
            child: Container(
              width: 34,
              height: 34,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: klik,
                icon: Icon(
                  suka ? Icons.favorite : Icons.favorite_border,
                  color: suka ? Colors.red : Colors.black87,
                  size: 19,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
