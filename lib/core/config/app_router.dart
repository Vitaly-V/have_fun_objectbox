import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/contacts/contacts.dart';

enum AppRoute { contacts, contact, editContact, addContact }

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
        name: AppRoute.contacts.name,
        path: '/',
        builder: (context, state) => const ContactListScreen(),
        routes: [
          GoRoute(
              name: AppRoute.contact.name,
              path: 'contact',
              onExit: (context, state) {
                context.read<ContactBloc>().add(const ContactCleared());
                return true;
              },
              builder: (context, state) {
                return const ContactDetailScreen();
              },
              routes: [
                GoRoute(
                  name: AppRoute.editContact.name,
                  path: 'edit',
                  builder: (context, state) {
                    return const ContactEditScreen();
                  },
                ),
              ]),
          GoRoute(
            name: AppRoute.addContact.name,
            path: 'add',
            builder: (context, state) {
              return const ContactAddScreen();
            },
          ),
        ]),
  ],
);
