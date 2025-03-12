import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import '../../../../../core/language/app_translation_key.dart';
import '../../data/providers/track_status_provider.dart';
import '../widgets/build_order_info.dart';
import '../widgets/order_status_app_bar.dart';
import '../widgets/tracking_status_row.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          OrderStatusAppBar(title: context.tr(AppTranslationKeys.trackOrder)),
      body: Padding(
        padding: EdgeInsetsDirectional.all(30.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildOrderInfo(),
            SizedBox(height: 45.h),
            ListView.separated(
              shrinkWrap: true,
              itemCount: 6,
              separatorBuilder: (context, index) => SizedBox(height: 6.h),
              itemBuilder: (context, index) {
                final statusList =
                    TrackStatusProvider.gettrackStatusList(context);

                return TrackingStatusRow(
                  trackStatusModel: statusList[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
