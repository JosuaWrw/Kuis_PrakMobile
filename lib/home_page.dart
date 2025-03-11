import 'package:flutter/material.dart';
import 'order_page.dart';
import 'about_page.dart';
import 'listmenu.dart';

class HomePage extends StatelessWidget {
  final String username;

  const HomePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Column(
        children: [
          Image.asset('assets/banner.jpg', height: 200, fit: BoxFit.cover),
          const SizedBox(height: 20),
          Text(
            "Selamat Datang, $username",
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutPage()),
              );
            },
            child: const Text(
              "Halaman About",
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Menu Makanan",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                final menu = menuItems[index];
                return ListTile(
                  leading: Image.asset(menu.image,
                      width: 50, height: 50, fit: BoxFit.cover),
                  title: Text(menu.name),
                  subtitle: Text("Rp ${menu.price}"),
                  trailing: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderPage(
                            menu: menu.name,
                            price: menu.price,
                            imagePath: menu.image,
                          ),
                        ),
                      );
                    },
                    child: const Text("Pesan"),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
