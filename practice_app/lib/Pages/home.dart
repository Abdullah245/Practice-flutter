import 'package:abcd/Constant/clr.dart';
import 'package:abcd/Constant/img.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.06,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          size: 30,
                        ))),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Color(ColorConst.themecolor),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                style: BorderStyle.solid,
                              )),
                          hintText: 'Search',
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 35, left: 30, bottom: 20),
                child: Text(
                  '''Order online 
collect in store''',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14, left: 15, right: 15),
              child: DefaultTabController(
                length: 4,
                child: TabBar(
                    labelColor: Color(ColorConst.splash),
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Color(ColorConst.splash),
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: [
                      Tab(
                        text: "Wearable",
                      ),
                      Tab(
                        text: "Laptop",
                      ),
                      Tab(
                        text: "Phones",
                      ),
                      Tab(
                        text: "Drones",
                      ),
                    ]),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.4,
              child: TabBarView(children: [
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Image.asset(ImageConst.image1),
                    ]),
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Image.asset(ImageConst.image1),
                    ]),
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Image.asset(ImageConst.image1),
                    ]),
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Image.asset(ImageConst.image1),
                    ]),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
