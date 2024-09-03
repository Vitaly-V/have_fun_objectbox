import 'package:eleven_systems/core/config/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../domain/entities/contact.dart';
import '../../domain/blocs/blocs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactListTile extends StatelessWidget {
  final Contact contact;

  const ContactListTile({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.person),
      title: Text('${contact.firstName} ${contact.lastName}'),
      subtitle: Text(contact.phoneNumbers.isNotEmpty
          ? contact.phoneNumbers.first
          : 'No phone number'),
      onTap: () {
        if (context.read<ContactBloc>().state.contact == contact) {
          context.goNamed(AppRoute.contact.name);
        } else {
          context.read<ContactBloc>().add(ContactSelected(contact));
        }
      },
    );
  }
}
