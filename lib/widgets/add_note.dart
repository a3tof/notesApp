import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 38,
            ),
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 120,
            ),
            CustomButton(),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
