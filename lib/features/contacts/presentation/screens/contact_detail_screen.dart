import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/core.dart';
import '../../domain/blocs/blocs.dart';
import '../widgets/contact_detail_tile.dart';

class ContactDetailScreen extends StatelessWidget {
  const ContactDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<ContactBloc, ContactState>(
        listener: (context, state) {
          if (state.contact == null) {
            context.goNamed(AppRoute.contacts.name);
          }
        },
        builder: (context, state) {
          var contact = state.contact;
          if (contact == null) {
            return const Center(child: CircularProgressIndicator());
          }
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 4.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Contact Name and Action Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${contact.firstName} ${contact.lastName}',
                          style: const TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {
                                context.goNamed(AppRoute.editContact.name);
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                context
                                    .read<ContactBloc>()
                                    .add(ContactDeleted(contact.id!));
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(),
                    // Contact Details
                    ContactDetailTile(
                      icon: Icons.phone,
                      label: 'Phone Number',
                      value: contact.phoneNumber,
                    ),
                    ContactDetailTile(
                      icon: Icons.home,
                      label: 'Street Address 1',
                      value: contact.streetAddress1,
                    ),
                    if (contact.streetAddress2.isNotEmpty)
                      ContactDetailTile(
                        icon: Icons.home,
                        label: 'Street Address 2',
                        value: contact.streetAddress2,
                      ),
                    ContactDetailTile(
                      icon: Icons.location_city,
                      label: 'City',
                      value: contact.city,
                    ),
                    ContactDetailTile(
                      icon: Icons.location_on,
                      label: 'State',
                      value: contact.state,
                    ),
                    ContactDetailTile(
                      icon: Icons.mail,
                      label: 'Zip Code',
                      value: contact.zipCode,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
