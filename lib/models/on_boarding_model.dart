class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({
    required this.image,
    required this.title,
    required this.discription,
  });
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'Majalah digital terbaik.',
    image: 'assets/ob/ob1.png',
    discription:
        "Mulailah menjelajahi topik berita terpanas di seluruh dunia bersama kami di mana saja.",
  ),
  UnbordingContent(
    title: 'Selalu dapatkan berita\nterpilih terkini.',
    image: 'assets/ob/ob2.png',
    discription:
        "Dapatkan berita terbaru yang dipilih oleh editor sesuai minat Anda dari seluruh dunia. ",
  ),
  UnbordingContent(
    title: 'Perkaya pemahaman Anda tentang dunia.',
    image: 'assets/ob/ob3.png',
    discription:
        "Berita terbaru dan terhangat dari seluruh dunia, membuat Anda lebih memahami lingkungan sekitar.",
  ),
];
