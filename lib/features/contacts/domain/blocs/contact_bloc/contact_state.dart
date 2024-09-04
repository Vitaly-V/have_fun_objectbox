part of 'contact_bloc.dart';

@freezed
class ContactState with _$ContactState {
  const factory ContactState({
    @Default([]) List<Contact> contacts,
    Contact? contact,
    @Default(false) bool isLoading,
    @Default('') String searchQuery,
    @Default(false) bool isAscending,
    String? errorMessage,
  }) = _ContactState;
}
