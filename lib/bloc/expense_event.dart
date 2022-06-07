part of 'expense_bloc.dart';

@immutable
abstract class ExpenseEvent {}

class AddAmountEvent extends ExpenseEvent {}

class AddPersonEvent extends ExpenseEvent {
  final User user;
  AddPersonEvent({required this.user});
}

class LoadUsersEvent extends ExpenseEvent {
  final User user;
  LoadUsersEvent({required this.user});
}

@immutable
class AddUserEvent extends ExpenseEvent {
  final TotalUsers totalUsers;
  final User user;

  AddUserEvent({
    required this.user,
    required this.totalUsers,
  });

  List<User> getTotalUsers() {
    final List<User> usersList = totalUsers.totalUsers;
    usersList.add(user);
    return usersList;
  }
}
