import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarUtil {

  static void showSuccess(String title, String message) {
    _showSnackbar(
      title,
      message,
      backgroundColor: Colors.green.shade600,
      icon: Icons.check_circle_outline,
    );
  }

  static void showError(String title, String message) {
    _showSnackbar(
      title,
      message,
      backgroundColor: Colors.red.shade600,
      icon: Icons.error_outline,
    );
  }

  static void showInfo(String title, String message) {
    _showSnackbar(
      title,
      message,
      backgroundColor: Colors.blue.shade600,
      icon: Icons.info_outline,
    );
  }

  static void _showSnackbar(
      String title,
      String message, {
        required Color backgroundColor,
        required IconData icon,
      }) {
    Get.snackbar(
      "",
      "",
      titleText: Text(title,
          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      messageText: Text(message, style: const TextStyle(color: Colors.white)),
      backgroundColor: backgroundColor,
      snackPosition: SnackPosition.BOTTOM,
      borderRadius: 12,
      margin: const EdgeInsets.all(12),
      icon: Icon(icon, color: Colors.white),
      duration: const Duration(seconds: 3),
      animationDuration: const Duration(milliseconds: 500),
      overlayBlur: 1.5,
      isDismissible: true,
      forwardAnimationCurve: Curves.easeOutBack,
    );
  }
}
