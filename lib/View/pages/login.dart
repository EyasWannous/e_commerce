import './register.dart';
import './signin.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 80,
          centerTitle: true,
          title: const Text(
            "Readen",
            style: TextStyle(fontSize: 40, color: Colors.black),
          ),
          backgroundColor: Colors.white,
          bottom: const TabBar(
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.only(bottom: 10),
            // splashFactory: NoSplash.splashFactory,
            tabs: [
              Tab(
                  child:
                      Text('SIGN IN', style: TextStyle(color: Colors.black))),
              Tab(
                  child:
                      Text('REGISTER', style: TextStyle(color: Colors.black))),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Signin(),
            const Register(),
          ],
        ),
      ),
    );
  }
}
