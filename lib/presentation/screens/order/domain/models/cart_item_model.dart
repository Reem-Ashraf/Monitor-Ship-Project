class CartItemModel {
  final String id;
  final String imageUrl;
  final String title;
  final double price;
  final String size;
  final String color;
  final int quantity;
  final bool isSelected;

  const CartItemModel({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.size,
    required this.color,
    required this.quantity,
    this.isSelected = true,
  });

  CartItemModel copyWith({
    String? id,
    String? imageUrl,
    String? title,
    double? price,
    String? size,
    String? color,
    int? quantity,
    bool? isSelected,
  }) {
    return CartItemModel(
      id: id ?? this.id,
      imageUrl: imageUrl ?? this.imageUrl,
      title: title ?? this.title,
      price: price ?? this.price,
      size: size ?? this.size,
      color: color ?? this.color,
      quantity: quantity ?? this.quantity,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  static CartItemModel forTest() {
    return const CartItemModel(
      id: 'test-id',
      imageUrl:
          'https://img.freepik.com/free-psd/portrait-woman-wearing-hijab_23-2150742018.jpg?t=st=1744397900~exp=1744401500~hmac=c3f2e8fb88949ad19ca840b8f8457d56c3c85cb04d030699f95a7a941e2da02b&w=740',
      title: 'Test Product',
      price: 99.2,
      size: 'L',
      color: 'Blue',
      quantity: 50,
    );
  }

  factory CartItemModel.fromMap(Map<String, dynamic> map) {
    return CartItemModel(
      id: map['id'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      title: map['title'] ?? '',
      price: (map['price'] as num?)?.toDouble() ?? 0.0,
      size: map['size'] ?? '',
      color: map['color'] ?? '',
      quantity: map['quantity'] ?? 0,
      isSelected: map['isSelected'] ?? true,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'imageUrl': imageUrl,
      'title': title,
      'price': price,
      'size': size,
      'color': color,
      'quantity': quantity,
      'isSelected': isSelected,
    };
  }
}
