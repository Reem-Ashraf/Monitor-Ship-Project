import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/core/utils/widgets/text_from_field_app.dart';
import 'package:monitor_ship_project/features/checkout_process/presentation/widgets/text_rich_checking.dart';

class ShippingInformationForm extends StatelessWidget {
  const ShippingInformationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFromFieldApp(
          label: context.tr('First name'),
        ),
        SizedBox(
          height: 15,
        ),
        TextFromFieldApp(
          label: context.tr('Last name'),
        ),
        SizedBox(
          height: 15,
        ),
        DropdownButtonFormField<String>(
          dropdownColor: AppColors.white,
          borderRadius: BorderRadius.circular(15),
          items: [
            'Egypt',
            'USA',
            'UK',
            'KSA',
            'Russia',
            'China',
            'Emirates',
            'Qatar',
            'Kuwait',
            'Bahrain',
            'Oman',
            'Iraq',
            'Syria',
            'Lebanon',
            'Jordan',
            'Germany',
            'France',
            'Italy',
            'Spain',
            'Portugal',
            'Brazil',
            'Morocco',
            'Tunisia',
            'Algeria',
            'Libya',
            'Sudan',
            'Nigeria',
            'Ghana',
            'Mauritania',
            'Mali',
            'Senegal',
          ]
              .map((country) => DropdownMenuItem(
                    value: country,
                    child: Text(country,
                        style: TextStyles.inputStyle.copyWith(
                          color: AppColors.darkGray,
                        )),
                  ))
              .toList(),
          onChanged: (value) {
            log(value.toString());
          },
          icon: Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 30,
          ),
          iconEnabledColor: AppColors.darkGray,
          iconDisabledColor: AppColors.darkGray,
          decoration: InputDecoration(
            label: TextRichChecking(text1: context.tr('Country')),
            fillColor: AppColors.darkGray,
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.darkGray),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.darkGray),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.darkGray),
            ),
          ),
          // hint: Text('Select Country'),
        ),
        SizedBox(
          height: 15,
        ),
        TextFromFieldApp(
          label: context.tr('Street name'),
        ),
        SizedBox(
          height: 15,
        ),
        TextFromFieldApp(
          label: context.tr('City'),
        ),
        SizedBox(
          height: 15,
        ),
        TextFromFieldApp(
          label: context.tr('Zip-code'),
        ),
        SizedBox(
          height: 15,
        ),
        TextFromFieldApp(
          label: context.tr('Phone number'),
        ),
      ],
    );
  }
}
