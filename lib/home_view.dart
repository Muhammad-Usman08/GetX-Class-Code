import 'dart:convert';

import 'package:apis/model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:http/http.dart' as http;

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // List<usersModel> detail = [];
  updateController update = Get.put(updateController());

  // getData() async {
  //   var baseUrl = 'https://jsonplaceholder.typicode.com/';
  //   var endpoint = 'users';
  //   var url = Uri.parse(baseUrl + endpoint);
  //   var response = await http.get(url);
  //   if (response.statusCode == 200) {
  //     var jsonResponse = jsonDecode(response.body);

  //     for (var i in jsonResponse) {
  //       setState(() {
  //         detail.add(usersModel.fromJson(i));
  //       });
  //       print(i);
  //     }
  //   } else {
  //     print('${response.statusCode}');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // child: GetBuilder<updateController>(
        //   builder: (context) {
        //     return Column(
        //       children: [
        //         // ElevatedButton(
        //         //   onPressed: () {
        //         //     getData();
        //         //   },
        //         //   child: const Text('Add Users'),
        //         // ),
        //         // const SizedBox(
        //         //   height: 50,
        //         // ),
        //         // ListView.builder(
        //         //     shrinkWrap: true,
        //         //     physics: const NeverScrollableScrollPhysics(),
        //         //     itemCount: detail.length,
        //         //     itemBuilder: (context, index) {
        //         //       return ListTile(
        //         //         title: Text(detail[index].address == null
        //         //             ? ''
        //         //             : detail[index].address!.city.toString()),
        //         //       );
        //         //     })

        //         //Get x work
        //         ElevatedButton(
        //           onPressed: () {
        //             update.increment();
        //           },
        //           child: Text('Add'),
        //         ),
        //         SizedBox(
        //           height: 40,
        //         ),
        //         Text(
        //           '${update.countVal}',
        //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        //         )
        //       ],
        //     );
        //   },
        // ),
        child: GetX<updateController>(builder: (context) {
          return Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  update.increment();
                },
                child: Text('Ad data'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(update.countVal.toString()),
            ],
          );
        }),
      ),
    );
  }
}
