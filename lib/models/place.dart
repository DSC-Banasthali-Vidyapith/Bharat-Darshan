enum Affordability { affordable, pricey, luxurious }

class Place {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> thingstoknow;
  final List<String> waysToReach;
  final int distance;
  final Affordability affordability;

  const Place({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.thingstoknow,
    required this.waysToReach,
    required this.distance,
    required this.affordability,
  });
}
