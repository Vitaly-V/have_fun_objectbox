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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              '${contact.firstName} ${contact.lastName}',
                              maxLines: 2,
                              style: const TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
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
                      // Display each phone number
                      ...contact.phoneNumbers
                          .map((phoneNumber) => ContactDetailTile(
                                icon: Icons.phone,
                                label: 'Phone Number',
                                value: phoneNumber,
                              )),
                      const Divider(),
                      // Display each address
                      ...contact.addresses.asMap().entries.map((entry) {
                        final index = entry.key;
                        final address = entry.value;
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Address ${index + 1}',
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ContactDetailTile(
                              icon: Icons.home,
                              label: 'Street Address 1',
                              value: address.streetAddress1,
                            ),
                            if (address.streetAddress2.isNotEmpty)
                              ContactDetailTile(
                                icon: Icons.home,
                                label: 'Street Address 2',
                                value: address.streetAddress2,
                              ),
                            ContactDetailTile(
                              icon: Icons.location_city,
                              label: 'City',
                              value: address.city,
                            ),
                            ContactDetailTile(
                              icon: Icons.location_on,
                              label: 'State',
                              value: address.state,
                            ),
                            ContactDetailTile(
                              icon: Icons.mail,
                              label: 'Zip Code',
                              value: address.zipCode,
                            ),
                            const Divider(),
                          ],
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
