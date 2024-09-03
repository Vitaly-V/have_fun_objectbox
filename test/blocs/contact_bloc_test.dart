import 'package:eleven_systems/features/contacts/domain/domain.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';

// Mocking the ContactRepositoryInterface
class MockContactRepository extends Mock
    implements ContactRepositoryInterface {}

void main() {
  late ContactBloc contactBloc;
  late MockContactRepository mockContactRepository;

  // Updated Contact instance with multiple phone numbers and addresses
  const contact = Contact(
    id: 1,
    contactID: '123',
    firstName: 'John',
    lastName: 'Doe',
    phoneNumbers: ['123-456-7890', '098-765-4321'],
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
    mockContactRepository = MockContactRepository();
    contactBloc = ContactBloc(mockContactRepository);
  });

  tearDown(() {
    contactBloc.close();
  });

  // Register fallback values for mocktail
  setUpAll(() {
    registerFallbackValue(contact);
    registerFallbackValue(
        const ContactUpdated(contact)); // in case you need more events
  });

  test('initial state is ContactState with default values', () {
    expect(contactBloc.state, const ContactState());
  });

  blocTest<ContactBloc, ContactState>(
    'emits [isLoading: true, contacts: [contact]] when ContactAdded is added and ContactsLoaded is processed',
    build: () {
      // Mocking the necessary methods
      when(() => mockContactRepository.isEmpty())
          .thenReturn(false); // Ensure this returns a bool
      when(() => mockContactRepository.addContact(any()))
          .thenAnswer((_) async {});
      when(() => mockContactRepository.getContacts())
          .thenAnswer((_) async => [contact]);
      return contactBloc;
    },
    act: (bloc) async {
      bloc.add(const ContactAdded(contact));
      // Waiting until processing is complete
      await bloc.stream.firstWhere((state) => state.isLoading == false);
    },
    expect: () => [
      const ContactState(
          isLoading: true, contacts: []), // When the contact is being added
      const ContactState(
          isLoading: false, contacts: [contact]), // After contacts are loaded
    ],
    verify: (_) {
      verify(() => mockContactRepository.addContact(contact)).called(1);
      verify(() => mockContactRepository.getContacts()).called(1);
    },
  );
}
