part of 'bill_screen_bloc.dart';

class BillScreenState {}

final class BillScreenInitial extends BillScreenState {}

final class BillLoading extends BillScreenState {}

final class BillLoaded extends BillScreenState {
  double total;
  double pending;
  double paid;
  final List<BillModel> sales;
  final List<PurchaseModel> purchase;
  BillLoaded(
      {required this.sales,
      required this.purchase,
      required this.paid,
      required this.pending,
      required this.total});
}
