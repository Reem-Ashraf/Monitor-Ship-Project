class RatingStarModel {
  final int index;
  final int rate;
  final void Function()? onTap;

  const RatingStarModel({
    required this.index,
    required this.rate,
    this.onTap,
  });
}
