import 'package:demo_chat_screen/screen/chat_screen/components/show_bottom_sheet.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        elevation: 1,
        title: const Text(
          'Mohammad Ali',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call, color: Colors.black),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // ****************************** Chat Field Section **********************
          InkWell(
            onTap: () {
              showModalBottomSheet(
                enableDrag: false,
                barrierColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                isScrollControlled: true,
                context: context,
                builder: (BuildContext context) {
                  return const MyBottomSheet();
                },
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    child: Icon(Icons.add, color: Colors.grey.shade500),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Message MOhammad Ali",
                    style: TextStyle(color: Colors.grey.shade500),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
