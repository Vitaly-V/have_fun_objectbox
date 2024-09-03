import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../domain/entities/entities.dart';
import '../../domain/blocs/blocs.dart';
import '../widgets/widgets.dart';

class ContactEditScreen extends StatelessWidget {
  const ContactEditScreen({super.key});

  void _saveContact(BuildContext context, Contact contact) {
    context.read<ContactBloc>().add(ContactUpdated(contact));
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Contact'),
      ),
      body: BlocBuilder<ContactBloc, ContactState>(
        builder: (context, state) {
          final contact = state.contact;
          if (contact == null) {
            return const Center(child: Text('No contact found'));
          }

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ContactForm(
              initialContact: contact,
              onSave: (contact) => _saveContact(context, contact),
            ),
          );
        },
      ),
    );
  }
}
