part of 'contact_bloc.dart';

@freezed
class ContactEvent with _$ContactEvent {
  const factory ContactEvent.contactsLoaded() = ContactsLoaded;
  const factory ContactEvent.contactAdded(Contact contact) = ContactAdded;
  const factory ContactEvent.contactUpdated(Contact contact) = ContactUpdated;
  const factory ContactEvent.contactDeleted(int id) = ContactDeleted;
  const factory ContactEvent.contactSelected(Contact contact) = ContactSelected;
}
