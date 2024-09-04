import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/blocs/blocs.dart';

class SortButton extends StatelessWidget {
  const SortButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactBloc, ContactState>(
      builder: (context, state) {
        final isAscending = state.isAscending;
        return IconButton(
          icon: Icon(
            isAscending ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
            size: 24.0,
          ),
          onPressed: () {
            context
                .read<ContactBloc>()
                .add(ContactsLoaded(isAscending: !isAscending));
          },
          tooltip: isAscending ? 'Sort Descending' : 'Sort Ascending',
        );
      },
    );
  }
}
