import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/banner.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 48.0,
              left: 0.0,
              right: 64.0,
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12.0,
                          color: HexColor('737373'),
                          fontWeight: FontWeight.w300,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Cari Pakaian Apapun..",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 4.0,
                        bottom: 4.0,
                        right: 8.0,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.filter_list,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
        // child: Column(
        //   children: [
        //     Container(
        //       margin: const EdgeInsets.symmetric(
        //         horizontal: 24,
        //       ),
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(10.0),
        //         color: Colors.white,
        //       ),
        //     ),
        //     TextFormField(
        //       style: TextStyle(color: Colors.white),
        //       decoration: InputDecoration(
        //         hintText: 'Cari Pakaian Apapun..',
        //         hintStyle: TextStyle(
        //           color: Colors.grey[600],
        //         ),
        //         fillColor: Colors.w,
        //         prefixIcon: Icon(
        //           Icons.email,
        //           color: Colors.white,
        //         ),
        //         contentPadding: EdgeInsets.all(8),
        //         enabledBorder: OutlineInputBorder(
        //           borderSide: BorderSide(
        //             color: Colors.white,
        //           ),
        //           borderRadius: BorderRadius.all(Radius.circular(15)),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
