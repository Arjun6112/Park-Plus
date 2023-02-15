import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _scrollController = PageController(viewportFraction: 0.9);
  PageController _stroiesController = PageController(viewportFraction: 0.9);
  PageController _scrollController3 = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(children: [
            // Image.asset(
            //   "assets/images/logo.svg",
            //   height: 30,
            // ),
            Text(
              "Hi, Stranger!",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )
          ]),
        ),
        bottomNavigationBar:
            BottomNavigationBar(backgroundColor: Colors.white, items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shop,
              color: Colors.black,
            ),
            label: "Shop",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
                color: Colors.black,
              ),
              label: "Community"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.tag,
                color: Colors.black,
              ),
              label: "FASTag"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.car_rental,
                color: Colors.black,
              ),
              label: "My Vhicles"),
        ]),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10)),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 15),
                        child: Text(
                          "Quick FASTag recharge",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2),
                        child: Text(
                          "Use GET500 to get cashback of upto Rs. 500",
                          style: GoogleFonts.poppins(
                              color: Colors.grey, fontSize: 12),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 2),
                          child: TextField(
                            decoration: InputDecoration(
                                suffixText: "Proceed",
                                suffixStyle: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue.shade800,
                                    fontSize: 12),
                                hintText: "Enter valid VRN",
                                hintStyle: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade700,
                                    fontSize: 15),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8),
                        child: Text(
                          "Powered by NETC and BHARAT BILLPAY",
                          style: GoogleFonts.poppins(
                              color: Colors.grey.shade600, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Shimmer.fromColors(
                  baseColor: Colors.pink.shade100,
                  highlightColor: Colors.pink.shade300,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red.shade200,
                        borderRadius: BorderRadius.circular(10)),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 190,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 8),
                      child: Text("Services",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0, top: 8),
                      child: Text("View all",
                          style: GoogleFonts.poppins(
                              color: Colors.blue.shade800,
                              fontWeight: FontWeight.bold,
                              fontSize: 12)),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 8,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 1,
                              crossAxisCount: 4,
                              mainAxisSpacing: 20,
                              crossAxisSpacing: 5),
                      itemBuilder: (context, index) {
                        return Shimmer.fromColors(
                          baseColor: Colors.grey.shade100,
                          highlightColor: Colors.grey.shade300,
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(10)),
                            height: 80,
                            width: 100,
                          ),
                        );
                      }),
                ),
                Text("Discover",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                const SizedBox(height: 20),
                Container(
                  height: 80,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 15),
                          child: const CircleAvatar(
                            radius: 40,
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10)),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 190,
                ),
                const SizedBox(height: 20),
                Container(
                  height: 250,
                  child: PageView.builder(
                      controller: _stroiesController,
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Container(
                            height: 500,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(10)),
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 2),
                                  child: Text("Arjun",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text("2 weeks ago",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black, fontSize: 12)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text("Midnight drives around the city",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 18)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                      "I have a bike and I like to go around the city at night...",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black, fontSize: 13)),
                                ),
                                Center(
                                  child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2),
                                      child: Image.network(
                                          scale: 2,
                                          fit: BoxFit.cover,
                                          height: 90,
                                          "https://wallpaperaccess.com/full/4895186.jpg")),
                                )
                              ],
                            ));
                      }),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 140,
                  child: PageView.builder(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.network(
                                "https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067__340.png"));
                      }),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 200,
                  child: PageView.builder(
                      controller: _scrollController3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(10)),
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 190,
                          child: Center(
                            child: Text("Ad",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ),
                        );
                      },
                      itemCount: 8),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 190,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}
