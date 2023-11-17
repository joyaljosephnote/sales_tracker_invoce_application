import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'business_profile_event.dart';
part 'business_profile_state.dart';

class BusinessProfileBloc
    extends Bloc<BusinessProfileEvent, BusinessProfileState> {
  // controllerss
  BusinessProfileBloc() : super(BusinessProfileInitial()) {
    on<BusinessProfileEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
