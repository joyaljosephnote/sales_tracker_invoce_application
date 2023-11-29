import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/presentation/routes/routs.dart';
import 'package:sales_tracker/featurs/utils/widgets/floting_action_button_widget.dart';

class SalesFlotingButton extends StatelessWidget {
  const SalesFlotingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlotingButtonWidget(
        buttonName: "Invoice",
        onPresed: () {
          Navigator.pushNamed(context, Routes.invoiceCreationScreen);
        },
        icon: Icons.add);
  }
}
