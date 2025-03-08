import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../models/track_status_model.dart';

class TrackStatusProvider {
  static List<TrackStatusModel> gettrackStatusList(BuildContext context) => [
        TrackStatusModel(
          statusText: context.tr('Parcel is successfully delivered'),
          dateText: '12 May  5:35',
          isCompleted: false,
          isLast: true,
        ),
        TrackStatusModel(
          statusText: context.tr('Parcel is out for delivery'),
          dateText: '12 May  5:35',
          isCompleted: true,
          isLast: true,
        ),
        TrackStatusModel(
          statusText: context.tr('Parcel is received at delivery Branch'),
          dateText: '12 May  5:35',
          isCompleted: true,
          isLast: true,
        ),
        TrackStatusModel(
          statusText: context.tr('Parcel is in transit'),
          dateText: '12 May  5:35',
          isCompleted: true,
          isLast: true,
        ),
        TrackStatusModel(
          statusText: context.tr('Sender has shipped your parcel'),
          dateText: '12 May  5:35',
          isCompleted: true,
          isLast: true,
        ),
        TrackStatusModel(
          statusText: context.tr('Sender is preparing to ship your order'),
          dateText: '12 May  5:35',
          isCompleted: true,
          isLast: false,
        ),
      ];
}
