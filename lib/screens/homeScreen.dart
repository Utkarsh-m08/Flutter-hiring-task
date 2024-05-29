import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
// would make a common file for this in bigger projects
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: const Color.fromARGB(255, 255, 17, 0),
            centerTitle: false,
            pinned: false,
            floating: false,
            expandedHeight: screenHeight * 0.3,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                fit: BoxFit.cover,
                'assets/images/weekend1.jpg',
              ),
            ),
          ),
          SliverAppBar(
            collapsedHeight: screenHeight * 0.1,
            backgroundColor: const Color.fromARGB(255, 255, 17, 0),
            centerTitle: true,
            pinned: true,
            floating: false,
            title: Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.02,
                bottom: screenHeight * 0.00, // add padding as desired
              ),
              child: Row(children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: screenWidth * 0.1, left: screenWidth * 0.05),
                    child: Text(
                      "The Weekend",
                      style: GoogleFonts.montserrat(
                        fontSize: screenWidth * 0.07,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: screenHeight * 0.3,
                          );
                        },
                      );
                    },
                    child: Icon(Icons.more_horiz_rounded),
                  ),
                )
              ]),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      'asdfghjjkl t6gfywefu ytvweyffhuwef \nrtyumnbvcdfrtyuj  ghjkl ghjkl ghjkl tyuiop edfghj 7uio\n rtyu tghj cvb wtabrtes ertgbertbe',
                      style: GoogleFonts.montserrat(
                        fontSize: screenWidth * 0.04,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.all(
                            Radius.circular(360),
                          ),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0,
                          ),
                          onPressed: () {
                            // showModalBottomSheet(
                            //   context: context,
                            //   builder: (BuildContext context) {
                            //     return Container(
                            //       height: screenHeight * 0.3,
                            //     );
                            //   },
                            // );
                          },
                          child: Text(
                            'Outdoor',
                            style: GoogleFonts.montserrat(
                              fontSize: screenWidth * 0.04,
                              // fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.all(
                            Radius.circular(360),
                          ),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0,
                          ),
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: screenHeight * 0.3,
                                );
                              },
                            );
                          },
                          child: Text(
                            'Outdoor',
                            style: GoogleFonts.montserrat(
                              fontSize: screenWidth * 0.04,
                              // fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.all(
                            Radius.circular(360),
                          ),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0,
                          ),
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: screenHeight * 0.3,
                                );
                              },
                            );
                          },
                          child: Text(
                            'Outdoor',
                            style: GoogleFonts.montserrat(
                              fontSize: screenWidth * 0.04,
                              // fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 8,
                  ),
                  child: Text(
                    'Media, Docs and Links',
                    style: GoogleFonts.montserrat(
                      fontSize: screenWidth * 0.06,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  height: screenHeight * 0.2,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: screenWidth * 0.3,
                              width: screenWidth * 0.3,
                              color: Colors.amber,
                              child: Image.asset(
                                fit: BoxFit.cover,
                                'assets/images/weekend1.jpg',
                              ),
                            ),
                            Container(
                              height: screenWidth * 0.3,
                              width: screenWidth * 0.3,
                              color: Colors.amber,
                              child: Image.asset(
                                fit: BoxFit.cover,
                                'assets/images/weekend1.jpg',
                              ),
                            ),
                            Container(
                              height: screenWidth * 0.3,
                              width: screenWidth * 0.3,
                              color: Colors.amber,
                              child: Image.asset(
                                fit: BoxFit.cover,
                                'assets/images/weekend1.jpg',
                              ),
                            ),
                            Container(
                              height: screenWidth * 0.3,
                              width: screenWidth * 0.3,
                              color: Colors.amber,
                              child: Image.asset(
                                fit: BoxFit.cover,
                                'assets/images/weekend1.jpg',
                              ),
                            ),
                            Container(
                              height: screenWidth * 0.3,
                              width: screenWidth * 0.3,
                              color: Colors.amber,
                              child: Image.asset(
                                fit: BoxFit.cover,
                                'assets/images/weekend1.jpg',
                              ),
                            ),
                            Container(
                              height: screenWidth * 0.3,
                              width: screenWidth * 0.3,
                              color: Colors.amber,
                              child: Image.asset(
                                fit: BoxFit.cover,
                                'assets/images/weekend1.jpg',
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Mute Notifiaction',
                        style: GoogleFonts.montserrat(
                          fontSize: screenWidth * 0.06,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      // Switch(
                      //   value: true,
                      //   onChanged: (value) {},
                      //   // onChanged: (bool value) {
                      //   //   setState(() {
                      //   //     // light1 = value;
                      //   //   });
                      //   // },
                      // )
                    ],
                  ),
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(''),
                      // child: Icon(Icons.train_sharp),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 8,
                  ),
                  child: Text(
                    'Media, Docs and Links',
                    style: GoogleFonts.montserrat(
                      fontSize: screenWidth * 0.06,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 8,
                  ),
                  child: Text(
                    'Media, Docs and Links',
                    style: GoogleFonts.montserrat(
                      fontSize: screenWidth * 0.06,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 8,
                  ),
                  child: Text(
                    'Media, Docs and Links',
                    style: GoogleFonts.montserrat(
                      fontSize: screenWidth * 0.06,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 8,
                  ),
                  child: Text(
                    'Media, Docs and Links',
                    style: GoogleFonts.montserrat(
                      fontSize: screenWidth * 0.06,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
