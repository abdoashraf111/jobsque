import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(right: 24, left: 24),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hi, Rafif Dian👋",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Create a better future for yourself here",
                        style: TextStyle(fontSize: 14, color: Colors.grey)),
                  ],
                ),
                Spacer(
                  flex: 1,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0xffD1D5DB),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 24,
                    child: Icon(Icons.recycling_outlined),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text("Suggested Job",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                const Spacer(
                  flex: 1,
                ),
                TextButton(onPressed: () {}, child: const Text("View all")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
