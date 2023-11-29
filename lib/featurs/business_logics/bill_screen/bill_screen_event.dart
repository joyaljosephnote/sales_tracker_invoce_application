part of 'bill_screen_bloc.dart';

class BillScreenEvent {}

class SalesEvent extends BillScreenEvent {
  final BillModel bill;
  SalesEvent({required this.bill});
}

class PurchaseEvent extends BillScreenEvent {
  final PurchaseModel purchase;
  PurchaseEvent({required this.purchase});
}

class LoadBillsEvent extends BillScreenEvent {}
