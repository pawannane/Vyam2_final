import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vyam_2_final/packages/yoga.dart';
import 'package:vyam_2_final/packages/zumba.dart';

import '../controllers/package_controller.dart';
import 'bookingDetails.dart';
import 'neargym.dart';


class Packeges extends StatefulWidget {
  const Packeges({Key? key}) : super(key: key);

  @override
  _PackegesState createState() => _PackegesState();
}

class _PackegesState extends State<Packeges> {
  BookingDetails bookingDetails = BookingDetails();
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
           iconSize: 25,
           icon: const Icon(
             CupertinoIcons.back,
             color: Colors.black,
           ),
           onPressed: () {
             Get.back();
           },
         ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Packeges",
          style: GoogleFonts.poppins(
              color: HexColor("3A3A3A"),
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: SizedBox(
        width: _width,
        height: _height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: booking.length,
                  itemBuilder: (context, snapshot) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: _width * 0.95,
                        height: 138,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20, top: 10, bottom: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  if (booking[snapshot].price > 100)
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Trending",
                                          style: GoogleFonts.poppins(
                                              fontSize: 10,
                                              color: HexColor("CDCDCD"),
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          booking[snapshot].title,
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              color: HexColor("3A3A3A"),
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  if (booking[snapshot].price < 100)
                                    Text(
                                      booking[snapshot].title,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: HexColor("3A3A3A"),
                                          fontWeight: FontWeight.w600),
                                    ),
                                  const Spacer(),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      if (booking[snapshot].price > 100)
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.all(5.0),
                                              padding: const EdgeInsets.only(
                                                  top: 2.0,
                                                  bottom: 2.0,
                                                  left: 5,
                                                  right: 5),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                  border: Border.all(
                                                      color:
                                                      HexColor("49C000"))),
                                              child: Text(
                                                '20% off',
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 9,
                                                    color: HexColor("49C000")),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "\$${booking[snapshot].orginalPrice}",
                                                  style: GoogleFonts.poppins(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      fontSize: 15,
                                                      color: HexColor("BFB9B9"),
                                                      fontWeight:
                                                      FontWeight.w600),
                                                ),
                                                const SizedBox(
                                                  width: 2,
                                                ),
                                                Text(
                                                  "\$${booking[snapshot].price}",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                      color: HexColor("3A3A3A"),
                                                      fontWeight:
                                                      FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      if (booking[snapshot].price < 100)
                                        Text(
                                          "\$${booking[snapshot].price}",
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              color: HexColor("3A3A3A"),
                                              fontWeight: FontWeight.w600),
                                        ),
                                      Text(
                                        "Inc. of all taxes",
                                        style: GoogleFonts.poppins(
                                            fontSize: 9,
                                            color: HexColor("B2B2B2"),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  MaterialButton(
                                    elevation: 0,
                                    onPressed: () {},
                                    color: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 1.5,
                                            color: HexColor("FFCA00")),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                        child: Text("Details",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                color: HexColor("FFCA00"),
                                                fontWeight: FontWeight.w600))),
                                  ),
                                  const Spacer(),
                                  MaterialButton(
                                    elevation: 0,
                                    onPressed: () {
                                      bookingDetails.bookingDetails(
                                          context, snapshot, booking, "");
                                    },
                                    color: HexColor("292F3D"),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    child: Center(
                                        child: Text("Buy now",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                color: HexColor("FFFFFF"),
                                                fontWeight: FontWeight.w600))),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    YogaList(width: _width),
                    const SizedBox(
                      height: 10,
                    ),
                    ZumbaList(width: _width),
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Nearby gyms",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    NearGymList(width: _width),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
