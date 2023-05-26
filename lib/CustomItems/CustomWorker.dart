import 'package:flutter/cupertino.dart';

class CustomWorkers extends StatelessWidget {
  const CustomWorkers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("lib/images/Dimas Profile.png"),
        const Column(
          children: [
            Text("Dimas Adi Saputro"),
            Text("Senior UI/UX Designer at Twitter"),
            Text("Senior UI/UX Designer at Twitter"),
          ],
        ),
        const Column(
          children: [
            Text("Work during"),
            Text("5 Years")
          ],
        )
      ],
    );
  }
}
