import 'package:flutter/widgets.dart';

import '../domain/domain.dart';

List<TextEditingController> initializePhoneControllers(Contact? contact) {
  return contact?.phones.map((phone) {
        return TextEditingController(text: phone.number);
      }).toList() ??
      [TextEditingController()];
}

List<Phone> getPhonesFromControllers(
  List<TextEditingController> controllers,
  Contact? initialContact,
) {
  return controllers.asMap().entries.map((entry) {
    final index = entry.key;
    final controller = entry.value;
    final existingPhone = (initialContact?.phones != null &&
            index < initialContact!.phones.length)
        ? initialContact.phones[index]
        : null;

    return Phone(
      id: existingPhone?.id,
      number: controller.text,
    );
  }).toList();
}
