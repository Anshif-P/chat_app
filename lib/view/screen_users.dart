import 'package:chat_app_ayan_machine_task/util/constance/colors.dart';
import 'package:chat_app_ayan_machine_task/util/validation/form_validation.dart';
import 'package:chat_app_ayan_machine_task/widget/comman/text_feild_widget.dart';
import 'package:flutter/material.dart';

class ScreenUsers extends StatelessWidget {
  final TextEditingController searchTextController = TextEditingController();
  ScreenUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Icon(Icons.menu), Text('Messages'), Icon(Icons.add)],
              ),
              const SizedBox(
                height: 10,
              ),
              TextFieldWidget(
                  hintText: 'Search conversations',
                  controller: searchTextController,
                  icon: Icons.search,
                  validator: (value) => Validations.emtyValidation(value)),
            ],
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView.separated(
            itemCount: 11,
            separatorBuilder: (context, index) => const Divider(
              height: 10,
              color: AppColor.extraLightGrey,
            ),
            itemBuilder: (context, index) => const ListTile(
              title: Text('Alice Doe'),
              leading: CircleAvatar(),
              trailing: Text('9:30'),
            ),
          ),
        ))
      ],
    )));
  }
}
