import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/presentation/screens/discover/data/models/discover_category_model.dart';
import 'package:monitor_ship_project/presentation/screens/discover/widgets/discover_category_widgets/list_view_num_of_item.dart';
import '../../../../../../core/utils/constants/text_style.dart';

class DiscoverCategoryItem extends StatefulWidget {
  const DiscoverCategoryItem({
    super.key,
    required this.discoverCategoryModel,
  });
  final DiscoverCategoryModel discoverCategoryModel;

  @override
  State<DiscoverCategoryItem> createState() => _DiscoverCategoryItemState();
}

class _DiscoverCategoryItemState extends State<DiscoverCategoryItem> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children:[ GestureDetector(
        onTap: () {
          setState(() {
            isExpanded = !isExpanded;
          });
        },
        child: Container(
          height: 170.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: widget.discoverCategoryModel.backgroundColor,
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all( 15.0.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                    context.tr(widget.discoverCategoryModel.text1),
                      textScaler: TextScaler.noScaling,
                      style: TextStyles.text22,
                    ),],
                ),
              ),
              const Spacer(),
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 65.r,
                    backgroundColor:
                        widget.discoverCategoryModel.smallCircleColor,
                  ),
                  CircleAvatar(
                    radius: 45.r,
                    backgroundColor: widget.discoverCategoryModel.bigCircleColor,
                  ),
                  Image.asset(
                    widget.discoverCategoryModel.image,
                    width: 90.w,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      ListViewNumberOfItem(isExpanded: isExpanded,)
      ],
    );
  }
}
