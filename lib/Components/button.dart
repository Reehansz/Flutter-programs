import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PESUButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;
  final bool active;
  const PESUButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        HapticFeedback.lightImpact();
        onPressed();
      },
      child: Container(
        width: 135,
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          color: active?Theme.of(context).colorScheme.primary:null,
          border: Border.all(),
        ),
        child: Text(
            label,
            style: TextStyle(
              color: active?Theme.of(context).colorScheme.onPrimary:null,
            ),
        ),
      ),
    );
  }
}
