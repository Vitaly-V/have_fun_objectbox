import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/core.dart';
import 'features/contacts/data/data.dart';
import 'features/contacts/domain/blocs/blocs.dart';

import 'objectbox.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    final store = await openStore();
    final contactDataSource = ContactDataSource(store);
    final contactRepository = ContactRepository(contactDataSource);
    runApp(MyApp(contactRepository: contactRepository));
  } catch (e) {
    // Critical error, log and exit
    AppLogger.logger.i('Failed to initialize ObjectBox store: $e');
    return;
  }
}

class MyApp extends StatelessWidget {
  final ContactRepository contactRepository;

  const MyApp({super.key, required this.contactRepository});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ContactBloc>(
      create: (context) =>
          ContactBloc(contactRepository)..add(const ContactsLoaded()),
      child: MaterialApp.router(
        routerConfig: appRouter,
        theme: ThemeData(primarySwatch: Colors.blue),
      ),
    );
  }
}
