part of 'business_profile_bloc.dart';

@immutable
sealed class BusinessProfileState {}

final class BusinessProfileInitial extends BusinessProfileState {}

final class BusinessProfileSuccess extends BusinessProfileState {}

final class BusinessProfileFailure extends BusinessProfileState {}
