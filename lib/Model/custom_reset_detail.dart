import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomReset<T> extends StatelessWidget {


  final T value;
  final T subvalue;
  final T? groupValue;
  final String label;
  final ValueChanged<T?> onChanged;
  final Widget icn;
  final double height;
  final double width;

  const CustomReset({
    required this.subvalue,
    required this.value,
    required this.groupValue,
    required this.label,
    required this.onChanged,
    required this.icn,
    required this.width,
    required this.height,
  });

  Widget _buildLabel() {
    final bool isSelected = value == groupValue;

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: isSelected ? Colors.deepPurpleAccent : Colors.grey.withOpacity(0.2),width: 2),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 30,),
          Container(
            alignment: Alignment.center,
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.deepPurpleAccent.withOpacity(0.2)
            ),
              child: icn),
          SizedBox(width: 25,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value.toString(),
                textAlign: TextAlign.left,
                style: GoogleFonts.lexendDeca(
                  textStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                subvalue.toString(),
                textAlign: TextAlign.left,
                style: GoogleFonts.lexendDeca(
                  textStyle: TextStyle(
                    color: Colors.black,
                  ),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(value),
      splashColor: Colors.yellow.withOpacity(0.1),
      child: _buildLabel(),
    );
  }
}
