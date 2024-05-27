class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categoriesList = [
  Category(
    title: "All",
    image: "assets/Images/alls.png",
  ),
  Category(
    title: "Sedan",
    image: "assets/Images/sedans.jpeg",
  ),
  Category(
    title: "SUV",
    image: "assets/Images/suvs.jpeg",
  ),
  Category(
    title: "MPV",
    image: "assets/Images/mpvs.jpeg",
  ),
  Category(
    title: "Sport",
    image: "assets/Images/sport.jpeg",
  ),
  Category(
    title: "Convertible",
    image: "assets/Images/convertibles.jpeg",
  ),
];