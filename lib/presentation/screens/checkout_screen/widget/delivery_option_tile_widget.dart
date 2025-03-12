import 'package:flutter/cupertino.dart';
import 'package:monitor_ship_project/presentation/screens/checkout_screen/widget/selected_radio_button.dart';

import 'DeliveryOptionModel.dart';

class DeliveryOptionTileWidget extends StatefulWidget {
  const DeliveryOptionTileWidget({super.key});

  @override
  State<DeliveryOptionTileWidget> createState() => _DeliveryOptionTileWidgetState();
}
int selectedIndex = 0;


class _DeliveryOptionTileWidgetState extends State<DeliveryOptionTileWidget> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: options.length,
      itemBuilder: (context, index) {
        return DeliveryOptionTile(
          option: options[index].copyWith(isSelected: index == selectedIndex),
          onTap: () {
            setState(() {
              selectedIndex = index; // Update selection
            });
          },
        );
      },
    );
  }
}
