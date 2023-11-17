part of 'business_profile_bloc.dart';

@immutable
sealed class BusinessProfileEvent {}

class SaveBusinessProfile extends BusinessProfileEvent {
  final Profiledata pro;

  SaveBusinessProfile({required this.pro});
}

class Profiledata {
  String companyName;
  String gst;
  Profiledata({
    required this.companyName,
    required this.gst,
  });
}
