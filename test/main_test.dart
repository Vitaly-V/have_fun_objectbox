import 'package:eleven_systems/features/features.dart';
import 'package:eleven_systems/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockContactRepository extends Mock implements ContactRepository {}

void main() {
  late MockContactRepository mockContactRepository;
  late ContactBloc contactBloc;

  setUp(() {
    mockContactRepository = MockContactRepository();
    contactBloc = ContactBloc(mockContactRepository);
  });

  tearDown(() {
    contactBloc.close();
  });

  testWidgets('MyApp initializes correctly and shows ContactListScreen',
      (WidgetTester tester) async {
    // Mock the isEmpty method to return a boolean value
    when(() => mockContactRepository.isEmpty()).thenReturn(false);

    // Mock the getContacts method to return an empty list
    when(() => mockContactRepository.getContacts()).thenAnswer((_) async => []);

    // Build the app and trigger a frame
    await tester.pumpWidget(MyApp(contactRepository: mockContactRepository));

    // Verify that the ContactBloc was provided
    expect(find.byType(BlocProvider<ContactBloc>), findsOneWidget);

    // Verify that the MaterialApp is created with the correct router configuration
    expect(find.byType(MaterialApp), findsOneWidget);

    // Wait for the UI to settle
    await tester.pumpAndSettle();

    // Verify that the ContactListScreen is shown
    expect(find.byType(ContactListScreen), findsOneWidget);
  });
}
