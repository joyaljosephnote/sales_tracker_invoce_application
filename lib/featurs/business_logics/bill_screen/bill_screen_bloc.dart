import 'package:bloc/bloc.dart';
import 'package:sales_tracker/data/models/bill_models/bill_model.dart';
import 'package:sales_tracker/data/models/purchase_model/purchase_model.dart';

part 'bill_screen_event.dart';
part 'bill_screen_state.dart';

class BillScreenBloc extends Bloc<BillScreenEvent, BillScreenState> {
  BillScreenBloc() : super(BillScreenInitial()) {
    on<LoadBillsEvent>((event, emit) {});
    on<PurchaseEvent>((event, emit) {});
    on<SalesEvent>((event, emit) {});
  }
}
