import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPhysical<T> extends StatelessWidget {


  final T value;
  final T? groupValue;
  final String label;
  final ValueChanged<T?> onChanged;


  const CustomPhysical({

    required this.value,
    required this.groupValue,
    required this.label,
    required this.onChanged,
  });

  Widget _buildLabel() {
    final bool isSelected = value == groupValue;

    return Container(
      width: 350,
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: isSelected? LinearGradient(
          begin: Alignment.center,
            end: Alignment.centerRight,
            colors: [
              Color(0xff8567ff),
              Color(0xff6c47ff),
            ]):
        LinearGradient(

            colors: [
              Colors.white,
              Colors.white,
            ])
        // color: isSelected ? Colors.deepPurpleAccent : Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              value.toString(),
              textAlign: TextAlign.center,
              style: GoogleFonts.lexendDeca(
                textStyle: TextStyle(
                  color: isSelected? Colors.white:Colors.black,
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
