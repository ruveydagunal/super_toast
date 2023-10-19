import 'package:flutter/material.dart';

class SuperToast {
  static void show(BuildContext context,
      {required String message,
      Color? backgroundColor,
      Color? textColor,
      double? borderRadius,
      Color? borderColor,
      Widget? prefixIcon,
      Widget? suffixIcon,
      Duration? duration = const Duration(seconds: 2),
      double? bottomPosition}) {
    final overlayState = Overlay.of(context);
    OverlayEntry overlayEntry;

    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        bottom: bottomPosition ??
            MediaQuery.of(context).size.height *
                0.05, // Toast'un altındaki boşluk
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
                  if (prefixIcon != null) prefixIcon,
                  if (prefixIcon != null) SizedBox(width: 8),
                  Text(
                    message,
                    style: TextStyle(color: textColor),
                  ),
                  if (suffixIcon != null) SizedBox(width: 8),
                  if (suffixIcon != null) suffixIcon,
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
    Widget? prefixIcon,
    Widget? suffixIcon,
    double? borderRadius,
    Duration duration = const Duration(seconds: 2),
    double? bottomPosition,
  }) {
    show(
      context,
      message: message,
      backgroundColor: backgroundColor ?? Colors.green,
      textColor: textColor ?? Colors.white,
      borderColor: borderColor ?? Colors.transparent,
      borderRadius: borderRadius,
      prefixIcon: prefixIcon ?? null,
      suffixIcon: suffixIcon ?? null,
      duration: duration,
      bottomPosition:
          bottomPosition ?? MediaQuery.of(context).size.height * 0.05,
    );
  }

  static void showFail(
    BuildContext context, {
    required String message,
    Color? borderColor,
    Color? backgroundColor,
    Color? textColor,
    Widget? prefixIcon,
    Widget? suffixIcon,
    double? borderRadius,
    Duration duration = const Duration(seconds: 2),
    double? bottomPosition,
  }) {
    show(
      context,
      message: message,
      backgroundColor: backgroundColor ?? Colors.red,
      textColor: textColor ?? Colors.white,
      borderColor: borderColor ?? Colors.white,
      borderRadius: borderRadius,
      prefixIcon: prefixIcon ?? null,
      suffixIcon: suffixIcon ?? null,
      duration: duration,
      bottomPosition:
          bottomPosition ?? MediaQuery.of(context).size.height * 0.05,
    );
  }

  static void showWarning(
    BuildContext context, {
    required String message,
    double borderRadius = 16,
    Duration duration = const Duration(seconds: 2),
    double? bottomPosition,
    Color? borderColor,
    Color? backgroundColor,
    Color? textColor,
    Widget? prefixIcon,
    Widget? suffixIcon,
  }) {
    show(
      context,
      message: message,
      backgroundColor: backgroundColor ?? Colors.orange,
      borderColor: borderColor ?? Colors.white,
      textColor: textColor ?? Colors.white,
      borderRadius: borderRadius,
      duration: duration,
      prefixIcon: prefixIcon ?? null,
      suffixIcon: suffixIcon ?? null,
      bottomPosition:
          bottomPosition ?? MediaQuery.of(context).size.height * 0.05,
    );
  }

  static void showInfo(
    BuildContext context, {
    required String message,
    double borderRadius = 16,
    Duration duration = const Duration(seconds: 2),
    double? bottomPosition,
  }) {
    show(
      context,
      message: message,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      borderRadius: borderRadius,
      duration: duration,
      bottomPosition:
          bottomPosition ?? MediaQuery.of(context).size.height * 0.05,
    );
  }
}
