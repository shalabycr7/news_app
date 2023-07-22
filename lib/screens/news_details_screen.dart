import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 255, 58, 68),
        elevation: 0,
        onPressed: () {},
        child: SvgPicture.asset(
          'assets/icons/hart.svg',
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: screensize.width,
          height: screensize.height,
          child: Stack(children: [
            SizedBox(
              width: screensize.width,
              height: screensize.height * (0.6),
              child: Image.asset(
                "assets/images/image3.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 120, left: 15, right: 15),
                  child: SingleChildScrollView(
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'LONDON',
                            style: GoogleFonts.nunito(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 46, 5, 5),
                            ),
                          ),
                          TextSpan(
                            text:
                                " — Cryptocurrencies “have no intrinsic value” and people who invest in them should be prepared to lose all their money, Bank of England Governor Andrew Bailey said.\n\n Digital currencies like bitcoin, ether and even dogecoin have been on a tear this year, reminding some investors of the 2017 crypto bubble in which bitcoin blasted toward \$20,000, only to sink as low as \$3,122 a year later.\n\nAsked at a press conference Thursday about the rising value of cryptocurrencies, Bailey said: “They have no intrinsic value. That doesn’t mean to say people don’t put value on them, because they can have extrinsic value. But they have no intrinsic value.\n\nBailey’s comments echoed a similar warning from the U.K.’s Financial Conduct Authority ",
                            style: GoogleFonts.nunito(
                              fontSize: 15,
                              color: const Color.fromARGB(255, 46, 5, 5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screensize.height * (281 / 812),
              left: screensize.width * (32 / 375),
              right: screensize.width * (32 / 375),
              child: BlurryContainer(
                width: screensize.width * 0.7,
                blur: 50,
                height: screensize.height * (171 / 812),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacer(),
                        Text("Sunday, 9 May 2021",
                            style: GoogleFonts.nunito(
                              fontSize: 12,
                              color: const Color.fromARGB(255, 46, 5, 5),
                            )),
                        const Spacer(),
                        Text(
                            "Crypto investors should be prepared to lose all their money, BOE governor says",
                            style: GoogleFonts.lora(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 46, 5, 5),
                            )),
                        const Spacer(),
                        Text(
                          "Published by Ryan Browne",
                          style: GoogleFonts.nunito(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 46, 5, 5),
                          ),
                        )
                      ]),
                ),
              ),
            ),
            Positioned(
              top: 15,
              left: 15,
              child: BlurryContainer(
                blur: 150,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_outlined,
                    )),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
