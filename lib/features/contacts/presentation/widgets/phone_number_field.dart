import 'package:flutter/material.dart';

class PhoneNumberField extends StatelessWidget {
  final TextEditingController controller;
  final int index;
  final VoidCallback onRemove;

  const PhoneNumberField({
    super.key,
    required this.controller,
    required this.index,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              labelText: 'Phone Number ${index + 1}',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a phone number';
              }
              return null;
            },
          ),
        ),
        IconButton(
          icon: const Icon(Icons.remove_circle_outline),
          onPressed: onRemove,
        ),
      ],
    );
  }
}
