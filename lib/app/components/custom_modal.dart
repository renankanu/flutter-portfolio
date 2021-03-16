import 'package:flutter/material.dart';
import 'package:port_dart/app/utils/colors.dart';

class CustomModal {
  static Future animateModal(BuildContext context,
      {@required Widget bodyModal}) {
    return showGeneralDialog(
      transitionDuration: Duration(milliseconds: 500),
      transitionBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) {
        return new ScaleTransition(
          scale: new Tween<double>(
            begin: 0.6,
            end: 1.0,
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: Interval(
                0.00,
                1.00,
                curve: Curves.easeIn,
              ),
            ),
          ),
          child: ScaleTransition(
            scale: Tween<double>(
              begin: 1.5,
              end: 1.0,
            ).animate(
              CurvedAnimation(
                parent: animation,
                curve: Interval(
                  0.50,
                  1.00,
                  curve: Curves.linear,
                ),
              ),
            ),
            child: child,
          ),
        );
      },
      context: context,
      barrierColor: MyColors.menu.withOpacity(0.9),
      barrierDismissible: true,
      barrierLabel: '',
      pageBuilder: (BuildContext context, Animation animation,
          Animation secondaryAnimation) {
        return Center(
          child: Material(
            color: MyColors.mako,
            borderRadius: BorderRadius.circular(24),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 20,
              ),
              child: Container(
                constraints: BoxConstraints(maxWidth: 300, minHeight: 150),
                child: bodyModal,
              ),
            ),
          ),
        );
      },
    );
  }
}
