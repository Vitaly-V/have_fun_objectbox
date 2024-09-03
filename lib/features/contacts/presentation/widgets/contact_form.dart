import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import '../../domain/entities/entities.dart';

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
  late final TextEditingController _phoneNumberController;
  late final TextEditingController _streetAddress1Controller;
  late final TextEditingController _streetAddress2Controller;
  late final TextEditingController _cityController;
  late final TextEditingController _stateController;
  late final TextEditingController _zipCodeController;

  final logger = Logger();

  @override
  void initState() {
    super.initState();
    final contact = widget.initialContact;
    _firstNameController = TextEditingController(text: contact?.firstName);
    _lastNameController = TextEditingController(text: contact?.lastName);
    _phoneNumberController = TextEditingController(text: contact?.phoneNumber);
    _streetAddress1Controller =
        TextEditingController(text: contact?.streetAddress1);
    _streetAddress2Controller =
        TextEditingController(text: contact?.streetAddress2);
    _cityController = TextEditingController(text: contact?.city);
    _stateController = TextEditingController(text: contact?.state);
    _zipCodeController = TextEditingController(text: contact?.zipCode);
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneNumberController.dispose();
    _streetAddress1Controller.dispose();
    _streetAddress2Controller.dispose();
    _cityController.dispose();
    _stateController.dispose();
    _zipCodeController.dispose();
    super.dispose();
  }

  void _saveForm() {
    if (_formKey.currentState!.validate()) {
      final newContact = Contact(
        id: widget.initialContact?.id,
        contactID: widget.initialContact?.contactID ??
            DateTime.now().millisecondsSinceEpoch.toString(),
        firstName: _firstNameController.text,
        lastName: _lastNameController.text,
        phoneNumber: _phoneNumberController.text,
        streetAddress1: _streetAddress1Controller.text,
        streetAddress2: _streetAddress2Controller.text,
        city: _cityController.text,
        state: _stateController.text,
        zipCode: _zipCodeController.text,
      );
      widget.onSave(newContact);
    }
  }

  @override
  Widget build(BuildContext context) {
    logger.d(widget.initialContact?.id ?? 'No ID');
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
          TextFormField(
            controller: _phoneNumberController,
            decoration: const InputDecoration(labelText: 'Phone Number'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a phone number';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _streetAddress1Controller,
            decoration: const InputDecoration(labelText: 'Street Address 1'),
          ),
          TextFormField(
            controller: _streetAddress2Controller,
            decoration: const InputDecoration(labelText: 'Street Address 2'),
          ),
          TextFormField(
            controller: _cityController,
            decoration: const InputDecoration(labelText: 'City'),
          ),
          TextFormField(
            controller: _stateController,
            decoration: const InputDecoration(labelText: 'State'),
          ),
          TextFormField(
            controller: _zipCodeController,
            decoration: const InputDecoration(labelText: 'Zip Code'),
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
