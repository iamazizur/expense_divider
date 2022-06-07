part of 'expense_bloc.dart';

@immutable
abstract class ExpenseState {}

class ExpenseInitial extends ExpenseState {
  final List<User> usersList = users;
}

class LoadUsersState extends ExpenseState {
  final List<User> userList;
  LoadUsersState({required this.userList});
}

class AddUserState extends ExpenseState {
  final List<User> usersList;
  AddUserState({
    required this.usersList,
  });
}



/*
class AddUserState extends ExpenseState {
  final ExpenseInitial expenseInitial;
  final User newUser;
  AddUserState({
    required this.expenseInitial,
    required this.newUser,
  });
  void addNewUser() {
    expenseInitial.usersList.add(newUser);
  }

  List<User> usersList() => expenseInitial.usersList;
}
*/
