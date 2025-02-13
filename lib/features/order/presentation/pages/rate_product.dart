import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/widgets/rate_star.dart';
import 'package:monitor_ship_project/features/checkout_process/presentation/widgets/appbar_checking.dart';

class RateProduct extends StatelessWidget {
  const RateProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarChecking(
        title: context.tr('Rate Product'),
      ),
      body: Padding(
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StarScore(),
            SizedBox(
              height: 20,
            ),
            
          ],
        ),
      ),
    );
  }
}
