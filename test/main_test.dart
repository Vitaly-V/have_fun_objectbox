import 'package:eleven_systems/features/contacts/domain/domain.dart';
import 'package:eleven_systems/features/features.dart';
import 'package:eleven_systems/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockContactRepository extends Mock implements ContactRepository {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter bindings

  late MockContactRepository mockContactRepository;

  setUp(() {
    SharedPreferences.setMockInitialValues({}); // Mock shared preferences
    mockContactRepository = MockContactRepository();
  });

  testWidgets('MyApp initializes correctly and shows ContactListScreen',
      (WidgetTester tester) async {
    when(() => mockContactRepository.getContacts(
            query: any(named: 'query'), isAscending: any(named: 'isAscending')))
        .thenReturn(<Contact>[]); // Return an empty list

    await tester.pumpWidget(MyApp(contactRepository: mockContactRepository));

    await tester.pumpAndSettle(
        const Duration(seconds: 2)); // Give it more time to settle

    expect(find.byType(ContactListScreen), findsOneWidget);
  });
}
