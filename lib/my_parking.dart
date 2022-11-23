import 'package:flutter/material.dart';

class MyParking extends StatefulWidget {
  const MyParking({super.key});

  @override
  State<MyParking> createState() => _MyParkingState();
}

class _MyParkingState extends State<MyParking> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Image.asset('assets/images/Group 121.png'),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: const Text(
            "My Parking",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Jost',
                color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
              color: Colors.grey,
            ),
          ],
          bottom: TabBar(
            unselectedLabelColor: const Color(0xFFBC0063),
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
              color: const Color(0xFFBC0063),
              borderRadius: BorderRadius.circular(30),
            ),
            tabs: [
              Tab(
                  child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border:
                        Border.all(color: const Color(0xFFBC0063), width: 1)),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Ongoing",
                  ),
                ),
              )),
              Tab(
                  child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border:
                        Border.all(color: const Color(0xFFBC0063), width: 1)),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Completed",
                  ),
                ),
              )),
              Tab(
                  child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border:
                        Border.all(color: const Color(0xFFBC0063), width: 1)),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Canceled",
                  ),
                ),
              )),
            ],
          ),
        ),
        body: TabBarView(children: [
          Container(
            color: Colors.transparent,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.27,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: const Color(0xFFF9F9F9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/Rectangle 63.png'),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 14, 0, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Allington Paddock",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text("715 Washington Alley"),
                                  const SizedBox(height: 2),
                                  Row(
                                    children: [
                                      const Text(
                                        "\$6.58",
                                        style: TextStyle(
                                            color: Color(0xFFBC0063),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Text("/2 hours"),
                                      const SizedBox(width: 10),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xFFBC0063),
                                            shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                width: 2.0,
                                                color: Color(0xFFBC0063),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            )),
                                        child: const Text("Now Active"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        height: 250,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 40),
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const Text(
                                              "Cancel Parking",
                                              style: TextStyle(
                                                  color: Color(0xFFDF321D),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Jost'),
                                            ),
                                            const Divider(),
                                            const Text(
                                              "Are you sure you want to cancel you Parking Reservation?",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  fontFamily: 'Jost'),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Text(
                                              "Only 80% of the money you can refund from your payment according tp our policy",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color(0xFFA1A1A1),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  fontFamily: 'Jost'),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  250,
                                                                  248,
                                                                  249),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            side:
                                                                const BorderSide(
                                                              width: 2.0,
                                                              color: Color(
                                                                  0xFFBC0063),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
                                                          )),
                                                  child: const Text(
                                                    "Cancel",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFBC0063),
                                                        fontSize: 16),
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    showDialog(
                                                        context: context,
                                                        builder: (context) {
                                                          return Dialog(
                                                            child: Container(
                                                              height: 300,
                                                              width: double
                                                                  .infinity,
                                                              margin: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      20),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              15),
                                                                  color: Colors
                                                                      .white),
                                                              child: Column(
                                                                children: [
                                                                  SizedBox(
                                                                    height: 150,
                                                                    width: 100,
                                                                    child: Image
                                                                        .asset(
                                                                            'assets/images/check.png'),
                                                                  ),
                                                                  const Text(
                                                                    "Successful!",
                                                                    style: TextStyle(
                                                                        color: Color(
                                                                            0xFFBC0063),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontSize:
                                                                            20,
                                                                        fontFamily:
                                                                            'Jost'),
                                                                  ),
                                                                  const Text(
                                                                    "You have successfully canceled your parking order. 80% funds will be returned to your accound",
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        fontFamily:
                                                                            'Jost'),
                                                                  ),
                                                                  ElevatedButton(
                                                                    onPressed:
                                                                        () {
                                                                      Navigator.of(
                                                                              context)
                                                                          .pop();
                                                                    },
                                                                    style: ElevatedButton
                                                                        .styleFrom(
                                                                            backgroundColor:
                                                                                const Color(0xFFBC0063),
                                                                            shape: RoundedRectangleBorder(
                                                                              side: const BorderSide(
                                                                                width: 2.0,
                                                                                color: Color(0xFFBC0063),
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(30.0),
                                                                            )),
                                                                    child:
                                                                        const Text(
                                                                      "Ok",
                                                                      style: TextStyle(
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                          fontSize:
                                                                              16),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              const Color(
                                                                  0xFFBC0063),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            side:
                                                                const BorderSide(
                                                              width: 2.0,
                                                              color: Color(
                                                                  0xFFBC0063),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
                                                          )),
                                                  child: const Text(
                                                    "Yes, Remove",
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 255, 255, 255),
                                                        fontSize: 16),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFF9F9F9),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                      width: 2.0,
                                      color: Color(0xFFBC0063),
                                    ),
                                    borderRadius: BorderRadius.circular(30.0),
                                  )),
                              child: const Text(
                                "Cancel Booking",
                                style: TextStyle(
                                    color: Color(0xFFBC0063), fontSize: 16),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFBC0063),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                      width: 2.0,
                                      color: Color(0xFFBC0063),
                                    ),
                                    borderRadius: BorderRadius.circular(30.0),
                                  )),
                              child: const Text(
                                "View Ticket",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 16),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.27,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: const Color(0xFFF9F9F9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/Rectangle 77.png'),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 14, 0, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Appleton Warren",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text("8499 Red Could Coust"),
                                  const SizedBox(height: 2),
                                  Row(
                                    children: [
                                      const Text(
                                        "\$6.98",
                                        style: TextStyle(
                                            color: Color(0xFFBC0063),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Text("/2 hours"),
                                      const SizedBox(width: 10),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 250, 249, 249),
                                            shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                width: 2.0,
                                                color: Color(0xFFBC0063),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            )),
                                        child: const Text(
                                          "Paid",
                                          style: TextStyle(
                                              color: Color(0xFFBC0063),
                                              fontSize: 16),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFF9F9F9),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                      width: 2.0,
                                      color: Color(0xFFBC0063),
                                    ),
                                    borderRadius: BorderRadius.circular(30.0),
                                  )),
                              child: const Text(
                                "Cancel Booking",
                                style: TextStyle(
                                    color: Color(0xFFBC0063), fontSize: 16),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFBC0063),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                      width: 2.0,
                                      color: Color(0xFFBC0063),
                                    ),
                                    borderRadius: BorderRadius.circular(30.0),
                                  )),
                              child: const Text(
                                "View Ticket",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 16),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.transparent,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.27,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xFFF9F9F9),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/images/Rectangle 63.png'),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 14, 0, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Allington Paddock",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    const SizedBox(height: 5),
                                    const Text("715 Washington Alley"),
                                    const SizedBox(height: 2),
                                    Row(
                                      children: [
                                        const Text(
                                          "\$6.58",
                                          style: TextStyle(
                                              color: Color(0xFFBC0063),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Text("/2 hours"),
                                        const SizedBox(width: 10),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 252, 248, 250),
                                              shape: RoundedRectangleBorder(
                                                side: const BorderSide(
                                                  width: 2.0,
                                                  color: Color(0xFF01DB3E),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              )),
                                          child: const Text(
                                            "Completed",
                                            style: TextStyle(
                                                color: Color(0xFF01DB3E),
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFF9F9F9),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                        width: 2.0,
                                        color: Color(0xFFBC0063),
                                      ),
                                      borderRadius: BorderRadius.circular(30.0),
                                    )),
                                child: const Text(
                                  "View Ticket",
                                  style: TextStyle(
                                      color: Color(0xFFBC0063), fontSize: 16),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.27,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xFFF9F9F9),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/images/Rectangle 77.png'),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 14, 0, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Appleton Warren",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    const SizedBox(height: 5),
                                    const Text("8499 Red Could Coust"),
                                    const SizedBox(height: 2),
                                    Row(
                                      children: [
                                        const Text(
                                          "\$6.98",
                                          style: TextStyle(
                                              color: Color(0xFFBC0063),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Text("/2 hours"),
                                        const SizedBox(width: 10),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 250, 249, 249),
                                              shape: RoundedRectangleBorder(
                                                side: const BorderSide(
                                                  width: 2.0,
                                                  color: Color(0xFF01DB3E),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              )),
                                          child: const Text(
                                            "Completed",
                                            style: TextStyle(
                                                color: Color(0xFF01DB3E),
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFF9F9F9),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                        width: 2.0,
                                        color: Color(0xFFBC0063),
                                      ),
                                      borderRadius: BorderRadius.circular(30.0),
                                    )),
                                child: const Text(
                                  "View Ticket",
                                  style: TextStyle(
                                      color: Color(0xFFBC0063), fontSize: 16),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.27,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xFFF9F9F9),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/images/Rectangle 78.png'),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 14, 0, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Banfield Road",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    const SizedBox(height: 5),
                                    const Text("970 Division Center"),
                                    const SizedBox(height: 2),
                                    Row(
                                      children: [
                                        const Text(
                                          "\$7.34",
                                          style: TextStyle(
                                              color: Color(0xFFBC0063),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Text("/2 hours"),
                                        const SizedBox(width: 10),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 250, 249, 249),
                                              shape: RoundedRectangleBorder(
                                                side: const BorderSide(
                                                  width: 2.0,
                                                  color: Color(0xFF01DB3E),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              )),
                                          child: const Text(
                                            "Completed",
                                            style: TextStyle(
                                                color: Color(0xFF01DB3E),
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFF9F9F9),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                        width: 2.0,
                                        color: Color(0xFFBC0063),
                                      ),
                                      borderRadius: BorderRadius.circular(30.0),
                                    )),
                                child: const Text(
                                  "View Ticket",
                                  style: TextStyle(
                                      color: Color(0xFFBC0063), fontSize: 16),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.27,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: const Color(0xFFF9F9F9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/Rectangle 63.png'),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 14, 0, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Allington Paddock",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text("715 Washington Alley"),
                                  const SizedBox(height: 2),
                                  Row(
                                    children: [
                                      const Text(
                                        "\$6.58",
                                        style: TextStyle(
                                            color: Color(0xFFBC0063),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Text("/2 hours"),
                                      const SizedBox(width: 10),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 252, 252, 252),
                                            shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                width: 2.0,
                                                color: Color.fromARGB(
                                                    255, 255, 0, 0),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            )),
                                        child: const Text(
                                          "Canceled",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 3, 3),
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFF9F9F9),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                      width: 2.0,
                                      color: Color(0xFFBC0063),
                                    ),
                                    borderRadius: BorderRadius.circular(30.0),
                                  )),
                              child: const Text(
                                "View Ticket",
                                style: TextStyle(
                                    color: Color(0xFFBC0063), fontSize: 16),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
        bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            selectedItemColor: const Color(0xFFBC0063),
            unselectedItemColor: Colors.grey,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark), label: 'Saved'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.book_rounded), label: 'Booking'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ]),
      ),
    );
  }
}
