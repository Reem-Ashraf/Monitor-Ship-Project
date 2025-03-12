class DeliveryOptionModel {
  final String title;
  final String subtitle;
  final bool isSelected;

  DeliveryOptionModel({
    required this.title,
    required this.subtitle,
    this.isSelected = false,
  });

  DeliveryOptionModel copyWith({bool? isSelected}) {
    return DeliveryOptionModel(
      title: title,
      subtitle: subtitle,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
List<DeliveryOptionModel> options = [
  DeliveryOptionModel(title: "Express Delivery", subtitle: "Arrives in 2-3 days"),
  DeliveryOptionModel(title: "Standard Delivery", subtitle: "Arrives in 5-7 days"),
  DeliveryOptionModel(title: "Pick-up Station", subtitle: "Pick up at a nearby station"),
];