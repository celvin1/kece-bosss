import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/counter_controller.dart';

class CounterView extends StatelessWidget {
  CounterView({Key? key}) : super(key: key);

  final CounterController controller = Get.put(CounterController());
  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterView'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(
          () => Text(
            'Count: ${controller.count}',
            style: TextStyle(fontSize: 10 + controller.count.toDouble()),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                if (controller.count > 1) {
                  controller.decrement();
                } else {
                  Get.snackbar('Error', 'Mentok cuyy',
                      snackPosition: SnackPosition.TOP);
                }
              },
              child: Icon(Icons.remove),
            ),
            ElevatedButton(
              onPressed: () {
                if (controller.count < 100) {
                  controller.increment();
                } else {
                  Get.snackbar('Error', 'teu bisa lewih deui',
                      snackPosition: SnackPosition.TOP);
                }
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}