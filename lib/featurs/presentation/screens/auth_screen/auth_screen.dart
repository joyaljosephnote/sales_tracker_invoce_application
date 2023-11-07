import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sales_tracker/featurs/utils/constants/constants.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: sWidth! / 5,
              ),
              Icon(
                Icons.lock,
                size: sWidth! / 3.5,
              ),
              SizedBox(
                height: sWidth! / 80,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: sWidth! / 10, right: sWidth! / 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: sWidth! / 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Enter your mobile number',
                        style: TextStyle(
                            fontSize: sWidth! / 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: sWidth! / 20,
                    ),
                    TextFormField(
                      initialValue: "+91 ",
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(),
                        hintText: "+91",
                        hintStyle: TextStyle(
                            fontSize: sWidth! / 18,
                            fontWeight: FontWeight.bold),
                      ),
                      keyboardType: TextInputType.phone,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: sWidth! / 10,
                    ),
                    Text(
                      'Or',
                      style: TextStyle(
                          fontSize: sWidth! / 35, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: sWidth! / 10,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                          child: SvgPicture.asset(
                        'assets/images/google.svg',
                        width: 50,
                      )),
                    ),
                    SizedBox(
                      height: sWidth! / 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: sWidth! / 1.3,
                        height: sWidth! / 7,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 51, 0, 255),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            splashColor: const Color.fromARGB(255, 25, 95, 193),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            child: Center(
                              child: Text(
                                'CONTINUE',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: sWidth! / 28,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: sWidth! / 10,
                    ),
                    Text(
                      'By continuing you agree to our  Terms & Policy',
                      style: TextStyle(
                          fontSize: sWidth! / 35, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
