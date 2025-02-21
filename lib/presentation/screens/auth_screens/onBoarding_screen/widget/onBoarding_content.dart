import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/constants/colors.dart';

class OnboardingContent extends StatelessWidget {
  final String title, subtitle, image;

  const OnboardingContent({super.key, 
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.grey, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.grey, fontSize: 10),
          ),
          SizedBox(height: 30),
          ClipRRect(
              borderRadius: BorderRadius.circular(10),

            child: Image.asset(image, width: 261.w,
              ),
          ),
        ],
      ),
    );
  }
}