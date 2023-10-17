import 'package:flutter/material.dart';

class SuperToast {
  static void show(
    BuildContext context, {
    required String message,
    Color? backgroundColor,
    Color? textColor,
    double? borderRadius,
    Color? borderColor,
    Widget? icon,
    Duration? duration = const Duration(seconds: 2),
  }) {
    final overlayState = Overlay.of(context);
    OverlayEntry overlayEntry;

    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        bottom: 30, // Toast'un altındaki boşluk
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Material(
            color: Colors.transparent,
            elevation: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(color: borderColor ?? Colors.transparent),
                color: backgroundColor,
                borderRadius: BorderRadius.circular(borderRadius ?? 16),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (icon != null) icon,
                  if (icon != null) SizedBox(width: 8),
                  Text(
                    message,
                    style: TextStyle(color: textColor),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    overlayState.insert(overlayEntry);

    Future.delayed(duration ?? Duration(seconds: 2), () {
      overlayEntry.remove();
    });
  }

  static void showSuccess(
    BuildContext context, {
    required String message,
    Color? borderColor,
    Color? backgroundColor,
    Color? textColor,
    Widget? icon,
    double? borderRadius,
    Duration duration = const Duration(seconds: 2),
  }) {
    show(
      context,
      message: message,
      backgroundColor: backgroundColor ?? Colors.green,
      textColor: textColor ?? Colors.white,
      borderColor: borderColor ?? Colors.transparent,
      borderRadius: borderRadius,
      icon: icon ?? null,
      duration: duration,
    );
  }

  static void showFail(
    BuildContext context, {
    required String message,
    Color? borderColor,
    Color? backgroundColor,
    Color? textColor,
    Widget? icon,
    double? borderRadius,
    Duration duration = const Duration(seconds: 2),
  }) {
    show(
      context,
      message: message,
      backgroundColor: backgroundColor ?? Colors.red,
      textColor: textColor ?? Colors.white,
      borderColor: borderColor ?? Colors.white,
      borderRadius: borderRadius,
      icon: icon ?? null,
      duration: duration,
    );
  }

  static void showWarning(
    BuildContext context, {
    required String message,
    double borderRadius = 16,
    Duration duration = const Duration(seconds: 2),
  }) {
    show(
      context,
      message: message,
      backgroundColor: Colors.orange,
      textColor: Colors.white,
      borderRadius: borderRadius,
      duration: duration,
    );
  }

  static void showInfo(
    BuildContext context, {
    required String message,
    double borderRadius = 16,
    Duration duration = const Duration(seconds: 2),
  }) {
    show(
      context,
      message: message,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      borderRadius: borderRadius,
      duration: duration,
    );
  }
}
