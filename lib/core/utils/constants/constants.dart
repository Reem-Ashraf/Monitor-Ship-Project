class Constants {
  static const String productSansFont = 'ProductSans';
  static const String nunitoFont = 'Nunito';

  static String convertNumToArabic(String number, bool isArabic) {
    if (!isArabic) return number;
    const arabicNumbers = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
    return number
    // TODO: Extract regex into its own file.
        .replaceAllMapped(RegExp(r'[0-9]'),
            (match) => arabicNumbers[int.parse(match.group(0)!)])
        .toString();
  }
}
