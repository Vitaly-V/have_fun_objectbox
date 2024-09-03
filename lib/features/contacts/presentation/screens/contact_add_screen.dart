import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../domain/entities/entities.dart';
import '../../domain/blocs/blocs.dart';
import '../widgets/widgets.dart';

class ContactAddScreen extends StatelessWidget {
  const ContactAddScreen({super.key});

  void _saveContact(BuildContext context, Contact contact) {
    context.read<ContactBloc>().add(ContactAdded(contact));
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ContactForm(
          onSave: (contact) => _saveContact(context, contact),
        ),
      ),
    );
  }
}
