import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learning_getx/resources/colors/app_colors.dart';

class Utils {
  static void fieldFocusChange(
    BuildContext context,
    FocusNode current,
    FocusNode nextFocus,
  ) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColors.blackCOlor,
      gravity: ToastGravity.BOTTOM,
    );
  }

  static snackBar(String message, String titile) {
    Get.snackbar(titile, message, backgroundColor: Colors.white);
  }

  Widget roundButton({
    bool isLoading = false,
    required String title,
    required VoidCallback onPressed,
    double width = double.infinity,
    double height = 50,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(height / 2),
          ),
        ),
        child: isLoading
            ? CircularProgressIndicator()
            : Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
      ),
    );
  }
}
