import 'package:commons/commons.dart';
import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:flutter/material.dart';

class HomeView  extends StatelessWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.getAppBar(title: "Home View"),
      body: Stack(
        children: [
          HeaderWidget(allowLogout: true, function: _logout),
        ],
      ),      
    );
  }

  void _logout() {
    Modular.to.navigate('/login');
  }
}