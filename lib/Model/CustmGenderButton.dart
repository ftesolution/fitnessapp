import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRadio<T> extends StatelessWidget {


  final T value;
  final T? groupValue;
  final String label;
  final ValueChanged<T?> onChanged;
  final Widget icn;
  final double height;
  final double width;

  const CustomRadio({

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
      width: height,
      height: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Colors.deepPurpleAccent : Colors.grey,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icn,
          SizedBox(height: 15,),
          Center(
            child: Text(
              value.toString(),
              textAlign: TextAlign.center,
              style: GoogleFonts.lexendDeca(
                textStyle: TextStyle(
                  color: Colors.white,
                ),
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
            ),
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
