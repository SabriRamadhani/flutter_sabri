import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../theDrawer.dart';

class PersonalData extends StatefulWidget {
  @override
  PersonalDataState createState() => PersonalDataState();
}

class PersonalDataState extends State<PersonalData> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(7, 137, 101, 1.0),
          title: Text('Personal Data'),
          leading: IconButton(
            icon: Icon(Icons.format_align_left),
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            },
          ),
        ),
        drawer: TheDrawer(context),
        body:
//        SingleChildScrollView(child:
          Stack(
              children: <Widget>[
                Container(
                  color: Color.fromRGBO(9, 188, 138, 1.0)
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.77,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40.0),
                              topRight: Radius.circular(40.0)
                          )
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(height: 40),
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(9, 188, 138, 1.0),
                                offset: Offset(0, 2),
                                blurRadius: 7)
                          ],
                          borderRadius: BorderRadius.circular(300.0),
                          border: Border.all(color: Colors.white, width: 2.5)
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(300.0),
                        child: Image.asset('images/sabri1.jpg', fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.all(25),
                        child: Column(
                          children: <Widget>[
                            Text('Sabri Ramadhani', style: TextStyle(fontSize: 18, fontFamily: 'Roboto Slab', fontWeight: FontWeight.w700)),
                            Text('Teknik Informatika', style: TextStyle(fontSize: 14, fontFamily: 'Roboto Slab', fontWeight: FontWeight.w400)),
                            Text('2017', style: TextStyle(fontSize: 14, fontFamily: 'Roboto Slab', fontWeight: FontWeight.w400)),

                            Container(height: 20),
                            Text('Personal Data', style: TextStyle(fontSize: 16, fontFamily: 'Roboto Mono', fontWeight: FontWeight.w700)),

                            Container(height: 10),
                            Container(
                                padding: EdgeInsets.all(20),
                                width: MediaQuery.of(context).size.width,
                                height: 222,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(9, 188, 138, 1.0),
                                          offset: Offset(0, 1.5),
                                          blurRadius: 4
                                      )
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(color: Color.fromRGBO(9, 188, 138, 1.0), width: 1.5)
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text('Nama Lengkap', style: TextStyle(fontSize: 12.5, fontFamily: 'Roboto Slab')),
                                        Text('NPM', style: TextStyle(fontSize: 12.5, fontFamily: 'Roboto Slab')),
                                        Text('Tempat, Tanggal Lahir', style: TextStyle(fontSize: 12.5, fontFamily: 'Roboto Slab')),
                                        Text(''),
                                        Text('Jenis Kelamin', style: TextStyle(fontSize: 12.5, fontFamily: 'Roboto Slab')),
                                        Text('Agama', style: TextStyle(fontSize: 12.5, fontFamily: 'Roboto Slab')),
                                        Text('Kewarganegaraan', style: TextStyle(fontSize: 12.5, fontFamily: 'Roboto Slab')),
                                        Text('Alamat', style: TextStyle(fontSize: 12.5, fontFamily: 'Roboto Slab'))
                                      ],
                                    ),
                                    Container(width: 20),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(':'),
                                        Text(':'),
                                        Text(':'),
                                        Text(''),
                                        Text(':'),
                                        Text(':'),
                                        Text(':'),
                                        Text(':')
                                      ],
                                    ),
                                    Container(width: 7),
                                    Container(
                                      width: 160,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('Sabri Ramadhani', style: TextStyle(fontSize: 12.5, fontFamily: 'Roboto Slab')),
                                          Text('1715061012', style: TextStyle(fontSize: 12.5, fontFamily: 'Roboto Slab')),
                                          Text('Bandar Lampung, 28 Desember 1999', style: TextStyle(fontSize: 12.5, fontFamily: 'Roboto Slab')),
                                          Text('Laki-laki', style: TextStyle(fontSize: 12.5, fontFamily: 'Roboto Slab')),
                                          Text('Islam', style: TextStyle(fontSize: 12.5, fontFamily: 'Roboto Slab')),
                                          Text('Indonesia', style: TextStyle(fontSize: 12.5, fontFamily: 'Roboto Slab')),
                                          Text('Jl. P. Antasari Gg. Waru 2 Lk. 3 Kel. Kali Balau Kencana Kec. Kedamaian Bandar Lampung', style: TextStyle(fontSize: 12.5, fontFamily: 'Roboto Slab'), softWrap: true)
                                        ],
                                      ),
                                    )
                                  ],
                                )
                            ),
                            Container(height: 25),
                            Text('Social Media', style: TextStyle(fontSize: 16, fontFamily: 'Roboto Mono', fontWeight: FontWeight.w700)),
                            Container(height: 10),
                            Container(
                                padding: EdgeInsets.all(20),
                                width: MediaQuery.of(context).size.width,
                                height: 150,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(9, 188, 138, 1.0),
                                          offset: Offset(0, 1.5),
                                          blurRadius: 4
                                      )
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(color: Color.fromRGBO(9, 188, 138, 1.0), width: 1.5)
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Container(width: 10),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Image.asset('images/sms-icon.png', width: 20.5),
                                        Image.asset('images/facebook-icon.png', width: 20.5),
                                        Image.asset('images/twitter-icon.png', width: 20.5),
                                        Image.asset('images/instagram-icon.png', width: 20.5),
                                        Image.asset('images/gmail-icon.png', width: 20.5),
                                      ],
                                    ),
                                    Container(width: 20),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text('0896-0822-5711', style: TextStyle(fontSize: 15, fontFamily: 'Roboto Slab')),
                                        Text('Sabri Ramadhani', style: TextStyle(fontSize: 15, fontFamily: 'Roboto Slab')),
                                        Text('sabri_ramadhani', style: TextStyle(fontSize: 15, fontFamily: 'Roboto Slab')),
                                        Text('sabri.ramadhani', style: TextStyle(fontSize: 15, fontFamily: 'Roboto Slab')),
                                        Text('sabriramadhani886@gmail.com', style: TextStyle(fontSize: 15, fontFamily: 'Roboto Slab'))
                                      ],
                                    ),
                                  ],
                                )
                            ),
                          ],
                        )
                    )
                  ],
                ),
              ],
            )
//        )
    );
  }
}