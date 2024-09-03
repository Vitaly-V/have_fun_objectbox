import 'package:flutter/material.dart';

class ContactDetailTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const ContactDetailTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).primaryColor),
      title: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(value, style: const TextStyle(fontSize: 16.0)),
    );
  }
}
