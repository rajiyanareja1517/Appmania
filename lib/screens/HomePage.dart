import 'package:appmania/utilities/all_product_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: Icon(
          Icons.location_on_rounded,
          color: Colors.black,
        ),
        title: Text(
          "Habiganj City",
          style: TextStyle(fontSize: 18),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 37,
              height: 37,
              alignment: Alignment.center,
              child: Icon(
                Icons.filter_list_rounded,
                color: Colors.black,
              ),
              decoration: BoxDecoration(
                  color: Color(0xffF4F4F4),
                  borderRadius: BorderRadius.circular(90)),
            ),
          )
        ],
      ),
      body: Container(

        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    top: 10,
                    right: 20,
                    bottom: 10,
                  ),
                  child: RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                          text: "Find The",
                          style: TextStyle(color: Colors.black, fontSize: 30)),
                      TextSpan(
                          text: " Best \nFood",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: " Around You",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                          )),
                    ]),
                  ),
                ),
                Container(
                  height: 40,
                  margin: EdgeInsets.only(
                    left: 20,
                    top: 10,
                    right: 20,
                    bottom: 10,
                  ),
                  width: double.infinity,

                  decoration: BoxDecoration(
                      color: Color(0xffF4F4F4),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(

                              margin: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.search,
                                color: Color(0xff797887),
                              )),
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Search your favourit food",
                                style: TextStyle(color: Color(0xffA8A8A8)),
                              )),
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Icon(Icons.power_input_rounded))
                    ],
                  ),
                ),
                SizedBox(
                  height: 37,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,

                      ),
                      child: Text(
                        "Find",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "5km",
                      style: TextStyle(color: Colors.orange, fontSize: 15),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.orange,
                      size: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Container(

                      padding: EdgeInsets.only(
                          right: 15, left: 15, bottom: 5, top: 5),
                      child: Text(
                        "Salad",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          right: 15, left: 15, bottom: 5, top: 5),
                      child: Text(
                        "Hot sale",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20)),
                    ), SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          right: 15, left: 15, bottom: 5, top: 5),
                      child: Text(
                        "Popularity",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20)),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...ProductData.allProductData.map((Map<String, dynamic>
                            e1) =>
                        Row(
                          children: [
                            ...e1['CatagoryProducts'].map((Map<String, dynamic>
                                    e) =>
                                Expanded(
                                  child: SingleChildScrollView(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, "detailsPage");
                                      },
                                      child: Container(
                                        width: 160,
                                        height: 260,
                                        margin: EdgeInsets.only(bottom: 15,left: 15),
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                            borderRadius: BorderRadius.circular(20)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Stack(
                                              children: [
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.favorite_border_outlined,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.topCenter,
                                                  child: Container(
                                                    width: 120,
                                                    height: 120,
                                                    margin: EdgeInsets.only(top: 25),
                                                    child: CircleAvatar(
                                                        radius: 100,
                                                        backgroundImage: NetworkImage(
                                                            "${e['thumbnail']}")),
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 10, right: 10),
                                              child:  SizedBox(
                                                width: 150,
                                                child: Text(
                                                  "${e['title']}",
                                                  maxLines: 1,
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 19,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                    margin: EdgeInsets.only(left: 10),
                                                    child: Text(
                                                      "20min",

                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                    )),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .star_border_purple500_outlined,
                                                      color: Colors.amber,
                                                      size: 19,
                                                    ),
                                                    SizedBox(
                                                      width: 3,
                                                    ),
                                                    Text(
                                                      "4.5",
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        left: 15, bottom: 10),
                                                    child: Text(
                                                      "\$ 12.00",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 15),
                                                    )),
                                                Align(
                                                  alignment: Alignment.bottomRight,
                                                  child: Container(
                                                    width: 37,
                                                    height: 37,
                                                    decoration: BoxDecoration(
                                                        color: Colors.green,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topLeft:
                                                                    Radius.circular(
                                                                        15),
                                                                bottomRight:
                                                                    Radius.circular(
                                                                        15))),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
