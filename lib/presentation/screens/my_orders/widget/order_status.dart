import '../../../../core/language/app_translation_key.dart';

enum OrderStatus { pending, delivered, cancelled }

extension OrderStatusExtension on OrderStatus {
  String get name {
    switch (this) {
      case OrderStatus.pending:
        return "${AppTranslationKeys.pending}"; // Add this key to your localization JSON
      case OrderStatus.delivered:
        return "${AppTranslationKeys.delivered}";
      case OrderStatus.cancelled:
        return "${AppTranslationKeys.cancelled}";
    }
  }

  String get localizedKey {
    switch (this) {
      case OrderStatus.pending:
        return "${AppTranslationKeys.pending}"; // Add this key to your localization JSON
      case OrderStatus.delivered:
        return "${AppTranslationKeys.delivered}";
      case OrderStatus.cancelled:
        return "${AppTranslationKeys.cancelled}";
    }
  }
}
