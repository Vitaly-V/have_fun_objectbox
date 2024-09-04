import 'package:flutter/material.dart';
import '../../domain/entities/entities.dart';

class AddressForm {
  final TextEditingController _streetAddress1Controller;
  final TextEditingController _streetAddress2Controller;
  final TextEditingController _cityController;
  final TextEditingController _stateController;
  final TextEditingController _zipCodeController;

  AddressForm({Address? address})
      : _streetAddress1Controller =
            TextEditingController(text: address?.streetAddress1),
        _streetAddress2Controller =
            TextEditingController(text: address?.streetAddress2),
        _cityController = TextEditingController(text: address?.city),
        _stateController = TextEditingController(text: address?.state),
        _zipCodeController = TextEditingController(text: address?.zipCode);

  void dispose() {
    _streetAddress1Controller.dispose();
    _streetAddress2Controller.dispose();
    _cityController.dispose();
    _stateController.dispose();
    _zipCodeController.dispose();
  }

  Address toAddress() {
    return Address(
      streetAddress1: _streetAddress1Controller.text,
      streetAddress2: _streetAddress2Controller.text,
      city: _cityController.text,
      state: _stateController.text,
      zipCode: _zipCodeController.text,
    );
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
