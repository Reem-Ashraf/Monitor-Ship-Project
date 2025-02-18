import 'package:flutter/material.dart';

import '../../../../core/utils/constants/colors.dart';

class DropDownMenu extends StatefulWidget {
   const DropDownMenu ({super.key});

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
   String? selectedValue;

   // Holds the selected item
   List<String> dropdownItems = ["Option 1", "Option 2", "Option 3"];

  @override
  Widget build(BuildContext context) {
    return  DropdownButtonFormField<String>(
      value: selectedValue, // Current selected value
      hint: Text("Country *"),
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.greyShade2, width: 2), // Custom underline color
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.greyShade2, width: 2), // Focused color
        ),
      ),
      icon: Icon(Icons.keyboard_arrow_down),


      isExpanded: true, // Make it full width if needed
      style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.w400), // Text style
      items: dropdownItems.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          selectedValue = newValue; // Update selected value
        });
      },
    ) ;
  }
}
