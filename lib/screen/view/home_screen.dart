import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/screen/controller/home_controller.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Getx Value"),
          centerTitle: true,
        ),
        body: Center(
          child: Obx(
                () => Text("${homeController.i}"),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            children: [
              FloatingActionButton(
                onPressed: () {
                  homeController.i++;
                },
                child: Icon(Icons.add),
                backgroundColor: Colors.black,
              ),
              SizedBox(width: 20),
              FloatingActionButton(
                onPressed: () {
                  homeController.i--;
                },
                child: Icon(Icons.minimize),
                backgroundColor: Colors.black,
              ),
              SizedBox(width: 20),
              FloatingActionButton(
                onPressed: () {
                  homeController.i.value=(homeController.i*2).toInt();
                },
                child: Text("2X"),
                backgroundColor: Colors.black,
              ),SizedBox(width: 20),
              FloatingActionButton(
                onPressed: () {
                  homeController.i.value=(homeController.i*3).toInt();
                },
                child: Text("3X"),
                backgroundColor: Colors.black,
              ),SizedBox(width: 20),
              FloatingActionButton(
                onPressed: () {
                  homeController.i.value=(homeController.i*4).toInt();
                },
                child: Text("4X"),
                backgroundColor: Colors.black,
              ),SizedBox(width: 20),
              FloatingActionButton(
                onPressed: () {
                  homeController.i.value=(homeController.i*6).toInt();
                },
                child: Text("6X"),
                backgroundColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
