

import 'package:expense_divider/bloc/expense_bloc.dart';
import 'package:expense_divider/user.dart';
import 'package:expense_divider/widgets/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HeadingButton extends StatelessWidget {
  final Function()? onpressed;
  final String buttonTitle;
  final TextStyle? textStyle;

  const HeadingButton({
    Key? key,
    this.onpressed,
    required this.buttonTitle,
    this.textStyle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      child: Text(buttonTitle, style: textStyle ?? CustomTextStyles.titleStyle),
    );
  }
}

abstract class ButtonFuncion {
  void buttonFunction();
}

class AddUserFunction implements ButtonFuncion {
  final BuildContext context;
  final ExpenseBloc expenseBloc;
  final User user;
  AddUserFunction({
    required this.context,
    required this.expenseBloc,
    required this.user,
  });
  @override
  void buttonFunction() {
    context.read<ExpenseBloc>().add(AddPersonEvent(user: user));
  }

  void addToBloc(BuildContext context) {}
}
