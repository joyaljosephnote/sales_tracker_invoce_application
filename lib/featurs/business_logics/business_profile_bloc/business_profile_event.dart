part of 'business_profile_bloc.dart';

@immutable
sealed class BusinessProfileEvent {}

class SaveBusinessProfile extends BusinessProfileEvent {
  final Profiledata pro;

  SaveBusinessProfile({required this.pro});
}

class Profiledata {
  String companyName;
  String gstNumber;
  String streetAddress;
  String city;
  String state;
  String zipCode;
  String contactNumber;
  Profiledata({
    required this.companyName,
    required this.gstNumber,
    required this.streetAddress,
    required this.city,
    required this.state,
    required this.zipCode,
    required this.contactNumber,
  });
}
