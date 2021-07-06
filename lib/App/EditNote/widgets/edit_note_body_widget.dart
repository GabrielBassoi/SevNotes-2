import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevnotes2/stores/edit_note_store.dart';
import 'package:sevnotes2/stores/settings_store.dart';

class EditNoteBodyWidget extends StatelessWidget {
  final EditNoteStore store;
  final SettingsStore setStore;
  const EditNoteBodyWidget({Key key, this.store, this.setStore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(right: 15, left: 15),
          decoration: BoxDecoration(
            color: setStore.theme.layout,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Observer(builder: (_) {
            return TextFormField(
              onChanged: store.setTitle,
              initialValue: store.title,
              maxLength: 50,
              maxLines: 1,
              style: GoogleFonts.roboto(color: setStore.theme.text),
              decoration: InputDecoration(
                border: InputBorder.none,
                counterText: "",
                hintText: "Title",
                hintStyle:
                    GoogleFonts.roboto(color: setStore.theme.text.withAlpha(860)),
              ),
            );
          }),
        ),
        SizedBox(
          height: 15,
        ),
        Flexible(
          child: Container(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
            decoration: BoxDecoration(
              color: setStore.theme.layout,
              borderRadius: BorderRadius.circular(20),
            ),
            child: SingleChildScrollView(
              child: TextFormField(
                onChanged: store.setBody,
                initialValue: store.body,
                maxLines: null,
                style: GoogleFonts.roboto(color: setStore.theme.text),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  counterText: "",
                  hintText: "Text",
                  hintStyle:
                      GoogleFonts.roboto(color: Colors.black.withAlpha(860)),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
