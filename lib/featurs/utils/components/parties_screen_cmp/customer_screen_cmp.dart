import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/presentation/routes/routs.dart';
import 'package:sales_tracker/featurs/utils/widgets/floting_action_button_widget.dart';

class CustomerScreenFlotingButton extends StatelessWidget {
  const CustomerScreenFlotingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlotingButtonWidget(
        buttonName: "Add Customer", onPresed: () {}, icon: Icons.add);
  }
}
