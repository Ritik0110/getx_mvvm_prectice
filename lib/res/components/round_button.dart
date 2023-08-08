import 'package:flutter/material.dart';
import '../Colors/app_colors.dart';

class RoundButton extends StatelessWidget {
  const RoundButton(
      {super.key,
      this.height = 50,
      this.width = 50,
      this.loading = false,
      required this.btnTitle,
      this.btnColor = Colors.tealAccent,
      this.textColor = AppColors.toastback,
      required this.onPress});
  final double height, width;
  final bool loading;
  final String btnTitle;
  final Color btnColor, textColor;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: loading
            ? const CircularProgressIndicator()
            : Center(
                child: Text(
                  btnTitle,
                  style:
                      TextStyle(color: textColor, fontWeight: FontWeight.w600),
                ),
              ),
      ),
    );
  }
}
