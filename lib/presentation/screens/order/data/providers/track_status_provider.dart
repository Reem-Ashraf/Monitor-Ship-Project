import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../../../core/language/app_translation_key.dart';
import '../models/track_status_model.dart';

class TrackStatusProvider {
  static List<TrackStatusModel> gettrackStatusList(BuildContext context) => [
        TrackStatusModel(
          statusText: context.tr(AppTranslationKeys.parcelIsReceivedAtDeliveryBranch),
          dateText: '12 May  5:35',
          isCompleted: false,
          isLast: true,
        ),
        TrackStatusModel(
          statusText: context.tr(AppTranslationKeys.parcelIsOutForDelivery),
          dateText: '12 May  5:35',
          isCompleted: true,
          isLast: true,
        ),
        TrackStatusModel(
          statusText: context.tr(AppTranslationKeys.parcelIsReceivedAtDeliveryBranch),
          dateText: '12 May  5:35',
          isCompleted: true,
          isLast: true,
        ),
        TrackStatusModel(
          statusText: context.tr(AppTranslationKeys.parcelIsInTransit),
          dateText: '12 May  5:35',
          isCompleted: true,
          isLast: true,
        ),
        TrackStatusModel(
          statusText: context.tr(AppTranslationKeys.senderHasShippedYourParcel),
          dateText: '12 May  5:35',
          isCompleted: true,
          isLast: true,
        ),
        TrackStatusModel(
          statusText: context.tr(AppTranslationKeys.senderIsPreparingToShipYourOrder),
          dateText: '12 May  5:35',
          isCompleted: true,
          isLast: false,
        ),
      ];
}
