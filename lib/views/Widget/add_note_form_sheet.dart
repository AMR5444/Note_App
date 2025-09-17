import 'package:flutter/widgets.dart';
import 'package:test/views/Widget/Custom_Bottom.dart';
import 'package:test/views/Widget/Custom_Text_feild.dart';

class AddNoteForm extends StatefulWidget {
  var supTitle;
  var title;

  AddNoteForm({
    super.key,
    this.supTitle,
    this.title,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, supTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      onChanged: () {},
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextField(
            hintText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          CustomTextField(
            hintText: 'content',
            onSaved: (value) {
              supTitle = value;
            },
            maxLiens: 5,
          ),
          SizedBox(height: 32),
          customButtom(
            text: 'Add',
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
