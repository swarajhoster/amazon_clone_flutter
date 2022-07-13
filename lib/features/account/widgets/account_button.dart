import 'package:flutter/material.dart';

class AccountButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const AccountButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 40,
        decoration: BoxDecoration(
          color: Colors.red.withOpacity(0.03),
          border:
              Border.all(color: Colors.black12.withOpacity(0.03), width: 0.0),
          borderRadius: BorderRadius.circular(50),
        ),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            side:
                BorderSide(width: 2.0, color: Colors.black12.withOpacity(0.03)),
          ),
          onPressed: onTap,
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
