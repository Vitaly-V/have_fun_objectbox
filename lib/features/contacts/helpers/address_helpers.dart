import '../domain/domain.dart';
import '../presentation/presentation.dart';

// Initialize address controllers for the form based on existing contact data
List<AddressForm> initializeAddressForms(Contact? contact) {
  return contact?.addresses.map((address) {
        return AddressForm(address: address);
      }).toList() ??
      [AddressForm()];
}

// Map controllers back into a list of Address entities
List<Address> getAddressesFromForms(
  List<AddressForm> forms,
  Contact? initialContact,
) {
  return forms.asMap().entries.map((entry) {
    final index = entry.key;
    final form = entry.value;
    // Check if there's an existing address with an ID
    final existingAddress = (initialContact?.addresses != null &&
            index < initialContact!.addresses.length)
        ? initialContact.addresses[index]
        : null;

    // Return the address with the ID retained if it exists
    return form.toAddress(id: existingAddress?.id);
  }).toList();
}
