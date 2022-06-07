import 'package:expense_divider/user.dart';
import 'package:expense_divider/widgets/styles.dart';
import 'package:flutter/material.dart';

@immutable
class UserTile extends StatelessWidget {
  final User user;
  const UserTile({
    required this.user,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selectedColor: Colors.blue,
      leading: CircleAvatar(
        backgroundImage: AssetImage(user.imageURL.toString()),
      ),
      title: Text(
        user.name,
        style: CustomTextStyles.titleStyle,
      ),
      trailing: Container(
        alignment: Alignment.center,
        // color: Colors.blueGrey,
        width: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.white,
              width: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    user.isLeading ? Icons.arrow_upward : Icons.arrow_downward,
                    color: user.isLeading ? Colors.green : Colors.red,
                    size: 25,
                  ),
                  Text(
                    user.currAmount.toString(),
                    style: CustomTextStyles.titleStyle,
                  ),
                  Text(
                    user.isLeading ? '+' : '-',
                    style: CustomTextStyles.titleStyle,
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_box,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
