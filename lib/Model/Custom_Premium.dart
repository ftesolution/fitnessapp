import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPremium<T> extends StatelessWidget {
  final T value;
  final T tailValue;
  final T subValue;
  final T? groupValue;
  final String label;
  final ValueChanged<T?> onChanged;
  final Widget icn;
  final double height;
  final double width;

  const CustomPremium({
    required this.value,
    required this.subValue,
    required this.tailValue,
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: isSelected ? Colors.deepPurpleAccent : Colors.white,
              width: 3),
          color: isSelected
              ? Colors.deepPurpleAccent.withOpacity(0.1)
              : Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.deepPurpleAccent,
                  width: 2,
                ),
              ),
              child: isSelected
                  ? Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepPurpleAccent,
                      ),
                    )
                  : null,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value.toString(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lexendDeca(
                    textStyle: TextStyle(
                      color: Colors.black,
                    ),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subValue.toString(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lexendDeca(
                    textStyle: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                    ),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              padding: EdgeInsets.only(
                top: 30,
                bottom: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text("\$"),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          tailValue.toString(),
                          style: GoogleFonts.lexendDeca(
                            textStyle: TextStyle(
                              color: Colors.black,
                            ),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Text("/m"),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
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
