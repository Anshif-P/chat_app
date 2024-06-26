import 'package:chat_app_ayan_machine_task/util/constance/colors.dart';
import 'package:flutter/material.dart';

class ScreenChat extends StatefulWidget {
  @override
  _ScreenChatState createState() => _ScreenChatState();
}

class _ScreenChatState extends State<ScreenChat> {
  final List<String> messages = [];
  final TextEditingController controller = TextEditingController();

  void sendMessage() {
    final text = controller.text;
    if (text.isNotEmpty) {
      setState(() {
        messages.add(text);
      });
      controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.extraLightGrey,
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios_new),
        title: const Text('Alice Doe'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(messages[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: controller,
                      decoration: const InputDecoration(
                        hintText: 'Enter your message...',
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: sendMessage,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
