import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            Spacer(flex: 2),
            GestureDetector(
              onTap: () {
                showImageDialog(context);
              },
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/zuhayr.png"),
              ),
            ),
            Spacer(),
            Text(
              "Zuhayr Noor",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "Software Developer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}

void showImageDialog(BuildContext context) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.7,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/zuhayr.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      );
    },
  );
}
