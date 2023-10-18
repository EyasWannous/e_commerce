import '../common/userProfile/actions_appbar.dart';
import '../common/userProfile/more_services.dart';
import '../common/userProfile/upper_name_with_icons.dart';
import '../common/userProfile/view_orders.dart';
import 'package:flutter/material.dart';

class UserPorfile extends StatelessWidget {
  const UserPorfile({super.key});

  @override
  Widget build(BuildContext context) {
    // final ProfileTabbarController profiletabbarcontroller =
    //     Get.put(ProfileTabbarController(), permanent: true);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 40,
        backgroundColor: Colors.white,
        actions: [ActionsAppBar()],
      ),
      body: Container(
        width: double.infinity,
        color: Colors.grey[300],
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.white,
              child: UpperNameWithIcons(),
            ),
            const SizedBox(height: 15),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: ViewOrders(),
            ),
            const SizedBox(height: 15),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: MoreServices(),
            ),
            // Container(
            //   width: double.infinity,
            //   color: Colors.white,
            //   child: TabbarWithoutAppbar(),
            // ),
          ],
        ),
      ),
    );
  }
}
