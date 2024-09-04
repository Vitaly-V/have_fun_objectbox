import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:eleven_systems/features/contacts/domain/domain.dart';

class MockContactRepository extends Mock
    implements ContactRepositoryInterface {}

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter binding

  late ContactBloc contactBloc;
  late MockContactRepository mockContactRepository;
  late MockSharedPreferences mockSharedPreferences;

  const contact = Contact(
    id: 1,
    contactID: '123',
    firstName: 'John',
    lastName: 'Doe',
    phones: [Phone(number: '123-456-7890'), Phone(number: '098-765-4321')],
    addresses: [
      Address(
        streetAddress1: '123 Main St',
        streetAddress2: '',
        city: 'Springfield',
        state: 'IL',
        zipCode: '62704',
      ),
      Address(
        streetAddress1: '456 Elm St',
        streetAddress2: 'Apt 2',
        city: 'Shelbyville',
        state: 'IL',
        zipCode: '62705',
      ),
    ],
  );

  setUp(() {
    SharedPreferences.setMockInitialValues({});
    mockSharedPreferences = MockSharedPreferences();
    mockContactRepository = MockContactRepository();
    contactBloc = ContactBloc(mockContactRepository);
  });

  tearDown(() {
    contactBloc.close();
  });

  // Register fallback values for mocktail
  setUpAll(() {
    registerFallbackValue(contact);
  });

  blocTest<ContactBloc, ContactState>(
    'emits [isLoading: true, contacts: [contact]] when ContactAdded is added and ContactsLoaded is processed',
    build: () {
      // Mocking addContact to return a synchronous Contact
      when(() => mockContactRepository.addContact(any())).thenReturn(contact);

      // Mocking getContacts to return a synchronous List<Contact>
      when(() => mockContactRepository.getContacts(
            query: '',
            isAscending: true,
          )).thenReturn([contact]);

      // Mocking importContactsIfFirstLaunch to return a Future<void>
      when(() => mockContactRepository.importContactsIfFirstLaunch())
          .thenAnswer((_) async {});

      // Mocking SharedPreferences to simulate that the database is already initialized
      when(() => mockSharedPreferences.getBool('databaseInitialized'))
          .thenReturn(true);

      return contactBloc;
    },
    act: (bloc) {
      bloc.add(const ContactAdded(contact));
    },
    expect: () => [
      const ContactState(
        isLoading: true,
        contacts: [],
      ),
      const ContactState(
        isLoading: false,
        contacts: [contact],
        isAscending: true,
      ),
    ],
    verify: (_) {
      // Verify that addContact and getContacts were called
      verify(() => mockContactRepository.addContact(contact)).called(1);
      verify(() => mockContactRepository.getContacts(
            query: '',
            isAscending: true,
          )).called(1);
    },
  );
}
