import 'package:flutter/widgets.dart';
import 'package:test/models/note_model.dart';
import 'package:test/views/Widget/Constants.dart';
import 'package:test/views/Widget/colors_ListView.dart';

class EidtNoteColorsList extends StatefulWidget {
  const EidtNoteColorsList({super.key, required this.note});
  final NoteModels note;
  @override
  State<EidtNoteColorsList> createState() => _EidtNoteColorsListState();
}

class _EidtNoteColorsListState extends State<EidtNoteColorsList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kColors[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: kColors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
