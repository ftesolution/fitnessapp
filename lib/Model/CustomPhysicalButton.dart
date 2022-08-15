import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPhysical<T> extends StatefulWidget {


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

  @override
  State<CustomPhysical<T>> createState() => _CustomPhysicalState<T>();
}

class _CustomPhysicalState<T> extends State<CustomPhysical<T>> {
  Widget _buildLabel() {
    final bool isSelected = widget.value == widget.groupValue;

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
              Theme.of(context).backgroundColor,
              Theme.of(context).backgroundColor,
            ])
        // color: isSelected ? Colors.deepPurpleAccent : Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              widget.value.toString(),
              textAlign: TextAlign.center,
              style: GoogleFonts.lexendDeca(
                textStyle: TextStyle(
                  color: isSelected? Colors.white: Theme.of(context).listTileTheme.textColor,
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
      onTap: () => widget.onChanged(widget.value),
      splashColor: Colors.yellow.withOpacity(0.1),
      child: _buildLabel(),
    );
  }
}
