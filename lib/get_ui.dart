import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxexample/controller/user_controller.dart';
import 'package:getxexample/get_controller.dart';
import 'package:getxexample/get_ui2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            // Using GetBuilder for state management
            GetBuilder<Controller>(
              init: Controller(),
              builder: (s) {
                return Text("${s.counter}");
              },
            ),
            //Using Getx for State management
            GetX<UserController>(
                init: UserController(),
                builder: (ctx) {
                  return Center(
                    child: Row(
                      children: [
                        Text("${ctx.user.value.name = "sdfasdfsf"}"),
                        SizedBox(
                          width: 20,
                        ),
                        Text("${ctx.user.value.count}"),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Get.find<UserController>().updateUser(3);
                            },
                            child: Text("Update User Value")),
                      ],
                    ),
                  );
                }),

            ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (_) => GetUi2(
                  //               getCount: counter,
                  //             )));
                },
                child: Text("Go To GetUi2"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<Controller>().incrementCounter();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
