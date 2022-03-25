import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:imgscanner/home.dart';

class Screen_1 extends StatefulWidget {
  const Screen_1({Key? key}) : super(key: key);

  @override
  State<Screen_1> createState() => _Screen_1State();
}

class _Screen_1State extends State<Screen_1> {
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.auto_awesome_mosaic_rounded),
        centerTitle: true,
        title: Text(
          'ImageScannerApp',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              icon: Icon(Icons.skip_next))
        ],
      ),
      backgroundColor: Colors.white,
      body: PageView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(30, 40, 30, 20),
                child: Container(
                  child: Image.network(
                    "https://imgs.search.brave.com/394LIq4mcLH07Y-7tNAByRay-x8lPPTiQlU9d9grSs8/rs:fit:1200:628:1/g:ce/aHR0cHM6Ly93d3cu/ZmluYW5jaWFsZm9y/dHVuZW1lZGlhLmNv/bS93cC1jb250ZW50/L3VwbG9hZHMvMjAy/MS8wNi9JbWFnZS10/by1UZXh0LnBuZw",
                    fit: BoxFit.contain,
                    height: 250,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: Text(
                  "Welcome in ImageScanner App",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontFamily: "Cookie",
                      fontSize: 30),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              row()
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 20, 20),
                child: Container(
                  child: Image.network(
                    "https://imgs.search.brave.com/HYBTEBKV1rVx5_AXRGXpem1fRo9G0QWRNjvzHmEya7Q/rs:fit:512:512:1/g:ce/aHR0cHM6Ly9jZG4y/Lmljb25maW5kZXIu/Y29tL2RhdGEvaWNv/bnMvcGFzdGVsLXN2/Zy1jYWxlbmRhci8x/Ni90YXNrX21hZ25p/Znlfc2VhcmNoX3pv/b21fZmluZF9leHBs/b3JlLTUxMi5wbmc",
                    fit: BoxFit.contain,
                    height: 250,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: Text(
                  "You can easily Search HandWritten notes also",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontFamily: "Cookie",
                      fontSize: 30),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              row()
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://imgs.search.brave.com/-YK7e5ZcNJBYIXw5PuzlygsnTc1aZbXy3Zfzcw7X1-8/rs:fit:800:566:1/g:ce/aHR0cHM6Ly9zdXBl/cmF3ZXNvbWV2ZWN0/b3JzLmNvbS93cC1j/b250ZW50L3VwbG9h/ZHMvMjAxNS8xMC9m/bGF0LWNhbWVyYS1p/Y29uLmpwZw",
                fit: BoxFit.cover,
                height: 300,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: Text(
                  "Search Images From Gallery and camera",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontFamily: "Cookie",
                      fontSize: 30),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(90, 15, 90, 8),
                child: ElevatedButton(
                    child: Text(
                      "Let's Start",
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                    },
                    style: ButtonStyle(backgroundColor:
                        MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.white38;
                      }
                      return Color.fromARGB(221, 255, 138, 43);
                    }))),
              ),
              SizedBox(
                height: 30,
              ),
              row(),
            ],
          ),
        ],
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        pageSnapping: true,
        onPageChanged: (index) {
          setState(() {
            currentpage = index;
          });
        },
      ),
    );
  }

  Widget row() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        currentpage == 0
            ? Icon(
                Icons.circle,
                size: 20,
                color: Colors.amberAccent,
              )
            : (Icon(
                Icons.circle_outlined,
                size: 10,
                color: Colors.purple,
              )),
        currentpage == 1
            ? Icon(
                Icons.circle,
                size: 20,
                color: Colors.amberAccent,
              )
            : (Icon(
                Icons.circle_outlined,
                size: 10,
                color: Colors.purple,
              )),
        currentpage == 2
            ? Icon(
                Icons.circle,
                size: 20,
                color: Colors.amberAccent,
              )
            : (Icon(
                Icons.circle_outlined,
                size: 10,
                color: Colors.purple,
              )),
      ],
    );
  }
}
