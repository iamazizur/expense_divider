import 'package:bloc/bloc.dart';
import 'package:expense_divider/user.dart';
import 'package:meta/meta.dart';

import '../Model/total_users.dart';

part 'expense_event.dart';
part 'expense_state.dart';

class ExpenseBloc extends Bloc<ExpenseEvent, ExpenseState> {
  ExpenseBloc() : super(ExpenseInitial()) {
    // on<LoadUsersEvent>(
    //   (event, emit) {
    //     emit(LoadUsersState(user: event.user));
    //   },
    // );

    on<AddUserEvent>(
      (event, emit) {
        
        LoadUsersState loadUsersState =
            LoadUsersState(userList: event.getTotalUsers());
        emit(loadUsersState);
      },
    );

    // on<AddPersonEvent>((event, emit) {
    //   final AddUserState addUserState = AddUserState(
    //     expenseInitial: ExpenseInitial(),
    //     newUser: event.user,
    //   );

    //   emit(addUserState);
    // });
  }
}
