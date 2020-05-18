import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> pageChildren(double width) {
      return <Widget>[
        Container(
          width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Save the \nworld",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "There was an idea to bring together a group of remarkable people, to see if we could become something more",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ),
            MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Our Team",
                      style: TextStyle(
                          color: Colors.pink, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
          ],
        ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/lp_image.png",
          fit: BoxFit.cover,
          width: width,),
        )
      ];
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            children: pageChildren(constraints.biggest.width/2),
            mainAxisAlignment: MainAxisAlignment.center,
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
