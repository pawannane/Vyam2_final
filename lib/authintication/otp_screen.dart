import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vyam_2_final/authintication/regitration_from.dart';
import 'package:vyam_2_final/colors/color.dart';

class OtpPage extends StatelessWidget {
  static String id = "/otp_screen";
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
                color: backgroundColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: size.height*.01,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: size.height/15
                          ),
                          child: Image.asset(
                            "assets/Illustrations/OTP1.png",
                            height: size.height / 2.8,
                            width: size.width /1.7,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(
                          height: size.height / 70,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 25.0,left: 25.0,top:10),
                          child: Text(
                            "OTP Verification",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: size.width/18,
                              fontFamily: "Poppins",
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w800,
                              // fontStyle: FontStyle.italic
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height/50,
                        ),
                        const Text(    //number settings
                            "Enter the OTP sent to +91 111 222 333"
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: size.height / 14.2,
                          width: size.width / 1.15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: size.height / 15,
                                width: size.width / 1.8,
                                child: const TextField(
                                  // controller: phoneController,
                                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800,fontSize: 20),
                                  textAlign: TextAlign.center,
                                  cursorHeight: 25,
                                  maxLength: 6,
                                  cursorColor: Colors.black,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                      border: UnderlineInputBorder(
                                      ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height/15,
                        ),

                        Row(
                          children: [
                            const Text(
                              "Didn???t you receive the OTP? "
                            ),
                            TextButton(
                                onPressed: (){

                                },
                                child: const Text(
                                    "Resend OTP",
                                  style: TextStyle(
                                    color: Colors.orangeAccent
                                  ),
                                )
                            )
                          ],
                        ),
                        SizedBox(
                          height: size.height/15,
                        ),

                        SizedBox(
                          width: size.width/1.2,
                          height: size.height/17,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.toNamed(RegistrationPage.id,
                              // arguments: [{"fast_appbar": "Register"}]
                              );
                            },
                            child: const Text(
                              "Verify",
                              style: TextStyle(
                                fontSize: 17.5,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: elevatedButtonColor
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                      ],
                    ),
                  ],
                )
            ),
          )
      ),
    );
  }
}
