import 'package:flutter/material.dart';
import 'package:store/constants/colors_constants.dart';

class CustomOutlinedButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color color;
  final bool isFilled;

  const CustomOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.isFilled = false,
    this.color = ColorsConstants.tertiary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          side: MaterialStateProperty.all(BorderSide(color: color)),
          backgroundColor: MaterialStateProperty.all(
              isFilled ? color.withOpacity(0.3) : Colors.transparent),
        ),
        onPressed: () => onPressed(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            text,
            style:
                const TextStyle(fontSize: 16, color: ColorsConstants.tertiary),
          ),
        ));
  }
}
