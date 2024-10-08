import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import '../../domain/entities/entities.dart';
import '../../helpers/helpers.dart';
import 'phone_number_field.dart';
import 'address_form.dart';

class ContactForm extends StatefulWidget {
  final Contact? initialContact;
  final void Function(Contact contact) onSave;

  const ContactForm({
    super.key,
    this.initialContact,
    required this.onSave,
  });

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _firstNameController;
  late final TextEditingController _lastNameController;

  late List<TextEditingController> _phoneNumberControllers;
  late List<AddressForm> _addressForms;

  @override
  void initState() {
    super.initState();
    final contact = widget.initialContact;

    _firstNameController = TextEditingController(text: contact?.firstName);
    _lastNameController = TextEditingController(text: contact?.lastName);

    // Initialize phone numbers and addresses using helper functions
    _phoneNumberControllers = initializePhoneControllers(contact);
    _addressForms = initializeAddressForms(contact);
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    for (var controller in _phoneNumberControllers) {
      controller.dispose();
    }
    for (var form in _addressForms) {
      form.dispose();
    }
    super.dispose();
  }

  void _addPhoneNumberField() {
    setState(() {
      _phoneNumberControllers.add(TextEditingController());
    });
  }

  void _removePhoneNumberField(int index) {
    setState(() {
      _phoneNumberControllers[index].dispose();
      _phoneNumberControllers.removeAt(index);
    });
  }

  void _addAddressForm() {
    setState(() {
      _addressForms.add(AddressForm());
    });
  }

  void _removeAddressForm(int index) {
    setState(() {
      _addressForms.removeAt(index);
    });
  }

  void _saveForm() {
    if (_formKey.currentState!.validate()) {
      final newContact = Contact(
        id: widget.initialContact?.id,
        contactID: widget.initialContact?.contactID ?? const Uuid().v4(),
        firstName: _firstNameController.text,
        lastName: _lastNameController.text,
        phones: getPhonesFromControllers(
            _phoneNumberControllers, widget.initialContact),
        addresses: getAddressesFromForms(_addressForms, widget.initialContact),
      );
      widget.onSave(newContact);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          TextFormField(
            controller: _firstNameController,
            decoration: const InputDecoration(labelText: 'First Name'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a first name';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _lastNameController,
            decoration: const InputDecoration(labelText: 'Last Name'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a last name';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          const Text('Phone Numbers',
              style: TextStyle(fontWeight: FontWeight.bold)),
          ..._phoneNumberControllers.asMap().entries.map((entry) {
            final index = entry.key;
            final controller = entry.value;
            return PhoneNumberField(
              controller: controller,
              index: index,
              onRemove: () => _removePhoneNumberField(index),
            );
          }),
          TextButton.icon(
            onPressed: _addPhoneNumberField,
            icon: const Icon(Icons.add),
            label: const Text('Add Phone Number'),
          ),
          const SizedBox(height: 16),
          const Text('Addresses',
              style: TextStyle(fontWeight: FontWeight.bold)),
          ..._addressForms.asMap().entries.map((entry) {
            final index = entry.key;
            final form = entry.value;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                form.build(context),
                IconButton(
                  icon: const Icon(Icons.remove_circle_outline),
                  onPressed: () => _removeAddressForm(index),
                ),
              ],
            );
          }),
          TextButton.icon(
            onPressed: _addAddressForm,
            icon: const Icon(Icons.add),
            label: const Text('Add Address'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: _saveForm,
              child: const Text('Save'),
            ),
          ),
        ],
      ),
    );
  }
}
