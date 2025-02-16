import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:monitor_ship_project/features/order/data/models/track_status_model.dart';
import 'package:monitor_ship_project/features/order/presentation/widgets/order_status_app_bar.dart';
import 'package:monitor_ship_project/features/order/presentation/widgets/text_rich_track.dart';
import 'package:monitor_ship_project/features/order/presentation/widgets/tracking_status_row.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrderStatusAppBar(title: context.tr('Track Order')),
      body: Padding(
        padding: EdgeInsetsDirectional.all(30.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextRichTrack(
              text1: 'Delivered on',
              text2: '15.02.25',
            ),
            SizedBox(height: 16.h),
            TextRichTrack(
              text1: 'Tracking Number :',
              text2: 'IK287368838',
            ),
            SizedBox(height: 45.h),
            ListView.separated(
              shrinkWrap: true,
              itemCount: 6,
              separatorBuilder: (context, index) => SizedBox(height: 6.h),
              itemBuilder: (context, index) {
                return TrackingStatusRow(
                  isCompleted: _trackStatusList(context)[index].isCompleted,
                  isLast: index == 5,
                  statusText: _trackStatusList(context)[index].statusText,
                  dateText: _trackStatusList(context)[index].dateText,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

List<TrackStatusModel> _trackStatusList(BuildContext context) => [
      TrackStatusModel(
        statusText: context.tr('Parcel is successfully delivered'),
        dateText: '12 May  5:35',
        isCompleted: false,
      ),
      TrackStatusModel(
        statusText: context.tr('Parcel is out for delivery'),
        dateText: '12 May  5:35',
        isCompleted: true,
      ),
      TrackStatusModel(
        statusText: context.tr('Parcel is received at delivery Branch'),
        dateText: '12 May  5:35',
        isCompleted: true,
      ),
      TrackStatusModel(
        statusText: context.tr('Parcel is in transit'),
        dateText: '12 May  5:35',
        isCompleted: true,
      ),
      TrackStatusModel(
        statusText: context.tr('Sender has shipped your parcel'),
        dateText: '12 May  5:35',
        isCompleted: true,
      ),
      TrackStatusModel(
        statusText: context.tr('Sender is preparing to ship your order'),
        dateText: '12 May  5:35',
        isCompleted: true,
      ),
    ];
