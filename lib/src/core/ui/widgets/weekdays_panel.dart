import 'package:dw_barbershop/src/core/ui/constants.dart';
import 'package:flutter/material.dart';

class WeekdaysPanel extends StatelessWidget {
  final List<String>? enableDays;
  final ValueChanged<String> onDayPressed;

  const WeekdaysPanel({
    super.key,
    required this.onDayPressed,
    this.enableDays,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Selecione os dias da semana',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonDay(
                    label: 'Seg',
                    onDayPressed: onDayPressed,
                    enableDays: enableDays),
                ButtonDay(
                    label: 'Ter',
                    onDayPressed: onDayPressed,
                    enableDays: enableDays),
                ButtonDay(
                    label: 'Qua',
                    onDayPressed: onDayPressed,
                    enableDays: enableDays),
                ButtonDay(
                    label: 'Qui',
                    onDayPressed: onDayPressed,
                    enableDays: enableDays),
                ButtonDay(
                    label: 'Sex',
                    onDayPressed: onDayPressed,
                    enableDays: enableDays),
                ButtonDay(
                    label: 'Sab',
                    onDayPressed: onDayPressed,
                    enableDays: enableDays),
                ButtonDay(
                    label: 'Dom',
                    onDayPressed: onDayPressed,
                    enableDays: enableDays),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonDay extends StatefulWidget {
  final List<String>? enableDays;
  final String label;
  final ValueChanged<String> onDayPressed;

  const ButtonDay({
    super.key,
    required this.label,
    required this.onDayPressed,
    this.enableDays,
  });

  @override
  State<ButtonDay> createState() => _ButtonDayState();
}

class _ButtonDayState extends State<ButtonDay> {
  var isSelected = false;

  @override
  Widget build(BuildContext context) {
    final ButtonDay(:enableDays, :label) = widget;
    final buttonBorderColor =
        isSelected ? ColorsConstants.brow : ColorsConstants.grey;
    final textColor = isSelected ? Colors.white : ColorsConstants.grey;
    var buttonColor = isSelected ? ColorsConstants.brow : Colors.white;
    final disableDay = enableDays != null && !enableDays.contains(label);

    if (disableDay) {
      buttonColor = Colors.grey[400]!;
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: disableDay
            ? null
            : () {
                setState(() {
                  isSelected = !isSelected;
                  widget.onDayPressed(label);
                });
              },
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: 40,
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: buttonColor,
            border: Border.all(
              color: buttonBorderColor,
            ),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
