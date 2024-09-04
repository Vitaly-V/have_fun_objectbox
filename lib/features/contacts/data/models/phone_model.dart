import 'package:objectbox/objectbox.dart';
import '../../domain/entities/entities.dart';
import 'contact_model.dart';

@Entity()
class PhoneModel {
  
  @Id()
  int id;

  String number;

  // ObjectBox relationship to ContactModel
  final contact = ToOne<ContactModel>();

  PhoneModel({
    this.id = 0,
    required this.number,
  });

  Phone toEntity() {
    return Phone(
      number: number,
    );
  }

  static PhoneModel fromEntity(Phone phone) {
    return PhoneModel(
      number: phone.number,
    );
  }
}
