import 'package:flutter/material.dart';

import '../../widget/widgets.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: const CustomAppBar(
        title: "Profile",
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              const ProfilePic(),
              const SizedBox(height: 20),
              ProfileMenu(
                text: "My Account",
                icon: "assets/icons/User Icon.svg",
                press: () => {},
              ),
              const SizedBox(height: 20),
              ProfileMenu(
                text: "Tích điểm",
                icon: "assets/icons/score.svg",
                press: () => {},
              ),
              const SizedBox(height: 20),
              ProfileMenu(
                text: "Xếp hạng ",
                icon: "assets/icons/rank.svg",
                press: () => {},
              ),
              const SizedBox(height: 20),
              ProfileMenu(
                text: "Quỹ Cộng Đồng ",
                icon: "assets/icons/trade.svg",
                press: () => {},
              ),
              const SizedBox(height: 20),
              ProfileMenu(
                text: "Đăng Xuất",
                icon: "assets/icons/logout.svg",
                press: () => {},
              ),
            ],
          )),
    );
  }
}
