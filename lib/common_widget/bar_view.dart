import 'package:flutter/material.dart';
import 'package:wallet_management/common/color_extension.dart';

class BarView extends StatelessWidget {
  final Map cObj;
  final double barWidth;
  final double maxVal;
  const BarView(
      {super.key,
      required this.cObj,
      required this.barWidth,
      required this.maxVal});

  @override
  Widget build(BuildContext context) {
    
    var height = 180 - 16 - 16;

    
    var incomeVal = double.tryParse( cObj["income"].toString() ) ?? 0.0;
    var expenseVal = double.tryParse(cObj["expense"].toString()) ?? 0.0;

    return Column(
      mainAxisAlignment:  MainAxisAlignment.end,
      children: [

        if(expenseVal != 0.0)
         Container(
          width: barWidth,
          height: expenseVal * height / maxVal,
          decoration: BoxDecoration(
              color: TColor.secondary, borderRadius: BorderRadius.circular(5)),
        ),

        const SizedBox(
          height: 4,
        ),

        if (incomeVal != 0.0)
        Container(
          width: barWidth,
          height: incomeVal * height / maxVal,
          decoration: BoxDecoration( color: TColor.primary, borderRadius: BorderRadius.circular(5)),
        ),

        const SizedBox(height: 4,),

        Text(
          cObj["name"].toString(),
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
