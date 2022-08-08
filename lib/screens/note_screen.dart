import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:kto_oxygen/screens/note_editor.dart';
import 'package:kto_oxygen/screens/note_reader.dart';
import 'package:kto_oxygen/style/app_style.dart';
import 'package:kto_oxygen/widgets/note_card.dart';

class NoteApp extends StatefulWidget {
  const NoteApp({Key? key}) : super(key: key);

  @override
  State<NoteApp> createState() => _NoteAppState();
}

class _NoteAppState extends State<NoteApp> {
  get note => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(Locales.string(context, 'phone')),
        backgroundColor: AppStyle.mainColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LocaleText(
              'recent_note',
              style: TextStyle(
                color: Color(0xFF2B60DE),
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream:
                    FirebaseFirestore.instance.collection("notes").snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  // Checking the connection State.
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasData) {
                    return GridView(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                    children: snapshot.data!.docs.map((note) => noteCard((){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) =>  NoteReaderScreen(note)));
                    },note)).toList(),);
                  }
                  return const LocaleText("no_recent_note");
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (_) =>  const NoteEditorScreen()));
      }, label: const LocaleText('add_note'),
      icon: const Icon(Icons.add),),
    );
  }
}
