import 'package:expense_divider/Model/total_users.dart';
import 'package:expense_divider/bloc/expense_bloc.dart';
import 'package:expense_divider/user.dart';
import 'package:expense_divider/widgets/buttons.dart';
import 'package:expense_divider/widgets/styles.dart';
import 'package:expense_divider/widgets/user_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Divider'),
      ),
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Column(
            children: [
              HeadingButton(
                onpressed: () {
                  final User user = User(
                    id: 004,
                    name: 'Yoyo',
                    currAmount: 50,
                    imageURL: 'images/pic1.jpg',
                    isLeading: false,
                  );
                  final TotalUsers totalUsers = TotalUsers();
                  context
                      .read<ExpenseBloc>()
                      .add(AddUserEvent(user: user, totalUsers: totalUsers));
                  // AddUserFunction(
                  //   context: context,
                  //   user: user,
                  //   expenseBloc: ExpenseBloc(),
                  // ).buttonFunction();
                },
                buttonTitle: "Add User",
                textStyle: CustomTextStyles.titleStyle,
              ),
              BlocConsumer<ExpenseBloc, ExpenseState>(
                listener: (context, state) {},
                builder: (context, state) {
                  if (state is ExpenseInitial) {
                    final List<User> users = state.usersList;
                    return Expanded(
                      child: ListView.builder(
                        itemCount: users.length,
                        itemBuilder: (context, index) {
                          return UserTile(user: users[index]);
                        },
                      ),
                    );
                  }
                  if (state is LoadUsersState) {
                    final List<User> _users = state.userList;

                    return Expanded(
                      flex: 3,
                      child: ListView.builder(
                        itemCount: _users.length,
                        itemBuilder: (context, index) =>
                            UserTile(user: users[index]),
                      ),
                    );
                  }

                  return const CircularProgressIndicator();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/*
ElevatedButton(
                onPressed: () {
                  context.read<ExpenseBloc>().add(
                        LoadUsersEvent(
                          user: User(
                              name: "Shoaib",
                              id: 001,
                              currAmount: 30,
                              imageURL: 'images/pic2.jpg',
                              isLeading: false),
                        ),
                      );
                },
                child: const Text('Load Users'),
              ),
*/