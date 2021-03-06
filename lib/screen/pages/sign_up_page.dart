import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:pharmacy_assistant/screen/widgets/custome_button.dart';
import 'package:pharmacy_assistant/shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimeColor,
      body: Stack(
        children: [
          Image.asset(
            'assets/signup.png',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10,
                      sigmaY: 10,
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 40,
                      ),
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 20,
                      ),
                      decoration: BoxDecoration(
                        color: kWhiteColor.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 54,
                            padding: const EdgeInsets.only(
                              left: 15,
                              right: 10,
                              top: 3,
                            ),
                            decoration: BoxDecoration(
                              color: kWhiteColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: TextFormField(
                              style: blackStyle.copyWith(
                                fontSize: 14,
                              ),
                              decoration: InputDecoration(
                                hintText: 'User name',
                                hintStyle: blackStyle.copyWith(),
                                icon: const Icon(Icons.person),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 54,
                            padding: const EdgeInsets.only(
                              left: 15,
                              right: 10,
                              top: 3,
                            ),
                            decoration: BoxDecoration(
                              color: kWhiteColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: TextFormField(
                              style: blackStyle.copyWith(
                                fontSize: 14,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: blackStyle.copyWith(),
                                icon: const Icon(Icons.email_rounded),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 54,
                            padding: const EdgeInsets.only(
                              left: 15,
                              right: 10,
                              top: 3,
                            ),
                            decoration: BoxDecoration(
                              color: kWhiteColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: TextFormField(
                              style: blackStyle.copyWith(
                                fontSize: 14,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: blackStyle.copyWith(),
                                icon: const Icon(Icons.lock_rounded),
                                suffixIcon: const Icon(Icons.visibility),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomeButton(
                            text: 'Sign Up',
                            onPressed: () {},
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Have an account?',
                                style: blackStyle.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  'Login',
                                  style: blackStyle.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: kBlueColor,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
