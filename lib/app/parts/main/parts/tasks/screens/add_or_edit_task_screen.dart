import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddOrEditTaskScreen extends StatelessWidget {
  const AddOrEditTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController taskTitle = TextEditingController();
    final TextEditingController taskContent = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Task"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // forms
            Form(
              key: formKey,
                child: Column(
              children: [
                // add title
                TextFormField(
                  controller: taskTitle,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "task title is empty!!";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "input task title...",
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: CupertinoColors.darkBackgroundGray),
                        borderRadius: BorderRadius.circular(8)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: CupertinoColors.darkBackgroundGray),
                        borderRadius: BorderRadius.circular(8)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: CupertinoColors.darkBackgroundGray),
                        borderRadius: BorderRadius.circular(8)),
                    errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: CupertinoColors.destructiveRed),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                const SizedBox(height: 12),
                // content
                TextFormField(
                  controller: taskContent,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "task content is empty!!";
                    }
                    return null;
                  },
                  maxLines: 4,
                  maxLength: 32,
                  decoration: InputDecoration(
                    hintText: "input content title...",
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: CupertinoColors.darkBackgroundGray),
                        borderRadius: BorderRadius.circular(8)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: CupertinoColors.darkBackgroundGray),
                        borderRadius: BorderRadius.circular(8)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: CupertinoColors.darkBackgroundGray),
                        borderRadius: BorderRadius.circular(8)),
                    errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: CupertinoColors.destructiveRed),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ],
            )),
            const SizedBox(height: 26,),
            // add or edit button
            ElevatedButton(
                style: const ButtonStyle(
                  minimumSize: WidgetStatePropertyAll(Size(double.infinity,55)),
                  backgroundColor: WidgetStatePropertyAll(CupertinoColors.systemPurple)
                ),
                onPressed: () {
                  if(formKey.currentState!.validate()) {

                  }
                },
                child: const Text("Add Task",style: TextStyle(color: CupertinoColors.white),))
          ],
        ),
      ),
    );
  }
}
