import 'package:flutter/material.dart';

class CloningUi01 extends StatefulWidget {
  const CloningUi01({Key? key}) : super(key: key);

  @override
  _CloningUi01 createState() => _CloningUi01();
}

class _CloningUi01 extends State<CloningUi01> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(children: [
              Positioned(
                  child: Container(
                height: 500,
                // color: Colors.yellow,
                child: Stack(
                  children: [
                    Positioned(
                        child: Container(
                      decoration: BoxDecoration(
                          // color: Colors.red,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  '''
https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pluggedin.com%2Ftv-reviews%2Fdragonballz%2F&psig=AOvVaw1meAGTbTUiLiefmmNEQAPI&ust=1741164148643000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMCwj4aE8IsDFQAAAAAdAAAAABAJ'''),),),
                      height: 450,
                    )),
                    Positioned(
                        bottom: 0,
                        right: 24,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80'),
                          radius: 50,
                        )),
                  ],
                ),
              )),
            ]),
            Container(
              padding: EdgeInsets.all(10),
              // color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Madrid City Tour for Designers',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('This is a random description of the topic',
                      style:
                          TextStyle(fontSize: 15, color: Colors.grey.shade200)),
                ],
              ),
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  rowIconText('20', Icons.favorite_rounded),
                  rowIconText('34', Icons.upload),
                  rowIconText('82', Icons.message),
                  rowIconText('295', Icons.face)
                ],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                  "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?"),
            )
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(icon)
      ],
    );
  }
}