
import 'package:flutter/material.dart';


class TextInput extends StatefulWidget {
  final String label;
  final String? hint;
  final String? error;
  final bool? isEmail;
  final List<String>? additionalInfo;

  const TextInput({
    super.key,
    required this.label,
    this.hint,
    this.error,
    this.isEmail=false,
    this.additionalInfo,
  });

  @override
  State<TextInput> createState() => _TextInputState();
}


class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.label,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: 9),
              _getTextField(context),
              const SizedBox(height: 9),
              _getAdditionalInfoField(context),
            ],
          ),
        )
      ]
    );
  }

  Widget _getTextField(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextField(
        decoration: InputDecoration(
          hintText: widget.hint,
          errorText: widget.error,
          fillColor: Theme.of(context).colorScheme.surfaceContainer,
          filled: true,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10, 
            horizontal: 10
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Theme.of(context).colorScheme.outline),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Theme.of(context).colorScheme.outline),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
          ),
        ),
        keyboardType: (widget.isEmail != null && (widget.isEmail!)) 
          ? TextInputType.emailAddress 
          : TextInputType.text,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }

  Widget _getAdditionalInfoField(BuildContext context) {
    if (widget.additionalInfo == null) {
      return const SizedBox();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.additionalInfo!.map((info) {
        return Text(
          '• $info',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        );
      }).toList(),
    );
  }
}