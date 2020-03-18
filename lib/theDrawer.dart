import 'package:flutter/material.dart';

Widget TheDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        Container(
            width: 190.0,
            height: 190.0,
            color: Color.fromRGBO(9, 188, 138, 1.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(0, 5),
                              blurRadius: 10
                          )
                        ],
                        borderRadius: BorderRadius.circular(300.0),
                        border: Border.all(color: Colors.white, width: 2.5)
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(300.0),
                      child: Image.asset('images/sabri1.jpg', fit: BoxFit.fill),
                    ),
                  ),
                  Container(height: 10),
                  Text(
                    "Sabri Ramadhani",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                    ),
                  )
                ],
              ),
            )
        ),
        ListTile(
          title: Text('Personal Data'),
          leading: Icon(Icons.assignment_ind),
          onTap: () {
            Navigator.pushNamed(context, '/personal');
          },
        ),
      ],
    ),
  );
}