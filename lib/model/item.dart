class Item {

  String id;
  String name;
  String urlImage;
  String description;
  String category;
  int quantity;

  Item({
    this.id = '',
    required this.name,
    required this.urlImage,
    required this.description,
    required this.category,
    required this.quantity,
  });

  factory Item.fromJson(Map<String, dynamic> json, String id) {
    return Item(
      id: id,
      name: json['name'] ?? '',
      urlImage: json['urlImage'] ?? '',
      description: json['description'] ?? '',
      category: json['category'] ?? '',
      quantity: json['quantity'] ?? '',
    );
  }
}

