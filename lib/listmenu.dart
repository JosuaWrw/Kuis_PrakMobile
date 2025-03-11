class MenuItem {
  String name;
  int price;
  String image;
  MenuItem(this.name, this.price, this.image);
}

List<MenuItem> menuItems = [
  MenuItem('Nasi Goreng', 15000, 'assets/nasgor.jpg'),
  MenuItem('Mie Goreng', 12000, 'assets/miegor.jpg'),
  MenuItem('Sate Ayam', 20000, 'assets/sateayam.jpeg'),
  MenuItem('Bakso', 10000, 'assets/bakso.jpeg'),
  MenuItem('Soto Ayam', 13000, 'assets/soto.jpeg'),
  MenuItem('Gado-Gado', 14000, 'assets/gado2.jpeg'),
];
